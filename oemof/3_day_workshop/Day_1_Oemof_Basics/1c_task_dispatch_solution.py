#!/usr/bin/env python

import pandas as pd
import matplotlib.pyplot as plt

from oemof.solph import Sink, Source, Transformer, Bus, Flow, EnergySystem, Model, Investment
from oemof.solph.components import GenericStorage
import oemof.outputlib as outputlib

# ## Specify solver
solver = 'cbc'


# ## Create an energy system and load data
datetimeindex = pd.date_range('1/1/2016', periods=24*365, freq='H')
energysystem = EnergySystem(timeindex=datetimeindex)

filename = 'input_data.csv'
data = pd.read_csv(filename, sep=",")
data = data.dropna(axis=1)
print(data.head())

# ## Create Buses

# resource buses
bus_gas = Bus(label='gas')
bus_coal = Bus(label='coal')

# electricity and heat buses
bus_el = Bus(label='electricity')
bus_th = Bus(label='heat')

# ## Create components
source_gas = Source(label='source_gas', outputs={bus_gas: Flow(variable_costs=30)})
source_coal = Source(label='source_coal', outputs={bus_coal: Flow(variable_costs=30)})

# Renewable feedin
wind = Source(label='wind', outputs={bus_el: Flow(
              actual_value=data['wind'], nominal_value=66.3, fixed=True)})

pv = Source(label='pv', outputs={bus_el: Flow(
            actual_value=data['pv'], nominal_value=65.3, fixed=True)})

# Electricity demand
demand_el = Sink(label='demand_el', inputs={bus_el: Flow(
                 nominal_value=85, actual_value=data['demand_el'], fixed=True)})


# power plants
pp_coal = Transformer(label='pp_coal',
                      inputs={bus_coal: Flow()},
                      outputs={bus_el: Flow(nominal_value=40,
                                            emission_factor=0.335)},
                      conversion_factors={bus_el: 0.39})

storage_el = GenericStorage(label='storage_el',
                            invest=Investment(ep_cost=412),
                            inputs={bus_el: Flow(nominal_value=200)},
                            outputs={bus_el: Flow(nominal_value=200)},
                            loss_rate=0.01,
                            initial_storage_level=0,
                            max_storage_level=0.9,
                            inflow_conversion_factor=0.9,
                            outflow_conversion_factor=0.9)

# an excess and a shortage variable can help to avoid infeasible problems
excess_el = Sink(label='excess_el', inputs={bus_el: Flow()})

shortage_el = Source(label='shortage_el',
                     outputs={bus_el: Flow(variable_costs=100000)})


# ## Add all to the energysystem
energysystem.add(bus_coal, bus_gas, bus_el,
                 source_gas, source_coal,
                 wind, pv, demand_el,
                 pp_coal, storage_el,
                 excess_el, shortage_el)


# ## Create an Optimization Model and solve it
# create optimization model based on energy_system
optimization_model = Model(energysystem=energysystem)

# solve problem
optimization_model.solve(solver=solver)

# ## Get results
results_main = outputlib.processing.results(optimization_model)
results_meta = outputlib.processing.meta_results(optimization_model)
params = outputlib.processing.parameter_as_dict(energysystem)

# ## Pass results to energysystem.results object before saving
energysystem.results['main'] = results_main
energysystem.results['meta'] = results_meta
energysystem.params = params

# ## Save results - Dump the energysystem (to ~/home/user/.oemof by default)
# Specify path and filename if you do not want to overwrite
energysystem.dump(dpath=None, filename=None)

print(results_meta)

sequences_el = outputlib.views.node(results_main, 'electricity')['sequences']
print(sequences_el.head())