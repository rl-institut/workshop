import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

from oemof import outputlib
from oemof.solph import EnergySystem, Model, Bus, Sink, Source, Flow, Investment
from oemof.tools.economics import annuity

periods = 20

timeindex = pd.date_range(start='2020-01-01', periods=periods, freq='H')

x = np.arange(0, periods, 1)
demand_ts = 0.5 * np.cos(x) + 1

es = EnergySystem(timeindex=timeindex)

el_bus = Bus(label='el_bus')

demand = Sink(
    label='el_demand',
    inputs={
        el_bus: Flow(
            nominal_value=10,
            actual_value=demand_ts,
            fixed=True
        )
    }
)

ep_costs = annuity(capex=1000, n=25, wacc=0.03)

print(ep_costs)

pp1 = Source(
    label='powerplant_1',
    outputs={
        el_bus: Flow(
            variable_costs=5,
            investment=Investment(ep_costs=ep_costs)
        )
    }
)

pp2 = Source(
    label='powerplant_2',
    outputs={
        el_bus: Flow(
            nominal_value=12.5,
            variable_costs=10
        )
    }
)

es.add(el_bus, demand, pp1, pp2)

om = Model(es)

lp_file_dir = 'dispatch.lp'

om.write(lp_file_dir, io_options={'symbolic_solver_labels': True})

om.solve()

results = om.results()

string_results = outputlib.processing.convert_keys_to_strings(results)

string_results = outputlib.processing.convert_keys_to_strings(results)

# collect all timeseries in a DataFrame
sequences = {k: v['sequences'] for k, v in string_results.items()}
sequences = pd.concat(sequences, axis=1)

# plot
idx = pd.IndexSlice
fig, ax = plt.subplots()
sequences.loc[:,idx[:,'el_bus',:]].plot.area(ax=ax, stacked=True)
sequences.loc[:,idx[:,'el_demand',:]].plot(ax=ax, c='r')
plt.show()
