#!/usr/bin/env python

import pandas as pd
import matplotlib.pyplot as plt

from oemof.solph import (Sink, Source, Transformer, Bus, Flow, Model,
                         EnergySystem, Investment)
import oemof.outputlib as outputlib
from oemof.tools import economics

solver = 'cbc'

# initialize energysytem
datetimeindex = pd.date_range('1/1/2016', periods=24*365, freq='H')
energysystem = EnergySystem(timeindex=datetimeindex)

# load data
filename = ''
data = pd.read_csv(filename, sep=';', decimal=',')
print(data.head())

# create buses
bus_coal = Bus(label='coal', balanced=False)
bus_gas = Bus(label='gas', balanced=False)
bus_el = Bus(label='electricity')

# create sources
wind = Source(label='wind',
              outputs={bus_el: Flow(actual_value=data['wind'],
                                     nominal_value=1,
                                     fixed=True)})

pv = Source(label='pv',
            outputs={bus_el: Flow(actual_value=data['pv'],
                               nominal_value=1,
                               fixed=True)})

# create excess and shortage to avoid infeasibilies
excess = Sink(label='excess_el',
              inputs={bus_el: Flow()})

shortage = Source(label='shortage_el',
                  outputs={bus_el: Flow(variable_costs=1e12)})

# create demand
demand_el = Sink(label='demand_el',
                 inputs={bus_el: Flow(nominal_value=1,
                                      actual_value=data['demand_el'],
                                      fixed=True)})

epc_coal = economics.annuity(capex=1500000, n=50, wacc=0.05)
epc_gas = economics.annuity(capex=900000, n=20, wacc=0.05)

# create power plants
pp_coal = Transformer(label='pp_coal',
                      inputs={bus_coal: Flow()},
                      outputs={bus_el: Flow(investment=Investment(ep_costs=epc_coal,
                                                                  maximum=5e9,
                                                                  existing=0),
                                            variable_costs=25)},
                      conversion_factors={bus_el: 0.39})

pp_gas = Transformer(label='pp_gas',
                     inputs={bus_gas: Flow()},
                     outputs={bus_el: Flow(investment=Investment(ep_costs=epc_gas,
                                                                  maximum=5e9,
                                                                  existing=0),
                                           variable_costs=40)},
                     conversion_factors={bus_el: 0.50})

# add all components to energysystem
energysystem.add(bus_coal, bus_gas, bus_el,
                 wind, pv, excess, shortage, demand_el,
                 pp_coal, pp_gas)


# create optimization model based on energy_system
optimization_model = Model(energysystem=energysystem)

# solve problem
optimization_model.solve(solver=solver,
                         solve_kwargs={'tee': False, 'keepfiles': False})


# postprocessing
results = outputlib.processing.results(optimization_model)
string_results = outputlib.processing.convert_keys_to_strings(results)

results_investment = pd.DataFrame({key: value['scalars'] for key, value in string_results.items() if hasattr(value['scalars'], 'invest')})
print(results_investment)

el_sequences = outputlib.views.node(results, 'electricity')['sequences']

sorted_sequences = pd.DataFrame()
for column in el_sequences.columns:
    sorted_sequences[column]=sorted(el_sequences[column], reverse=True)

fig, ax = plt.subplots(figsize=(8,3))
sorted_sequences.plot(ax=ax, linewidth=3)
ax.set_ylabel('Power in kW')
ax.set_xlabel('Sorted hours')
ax.set_title('Electricity: Annual load duration curve')
legend = plt.legend(loc='center left', bbox_to_anchor=(1.0, 0.5)) # place legend outside of plot
plt.tight_layout()
plt.show()