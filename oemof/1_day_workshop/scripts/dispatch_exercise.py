import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

from oemof import outputlib

from oemof.solph import EnergySystem, Model, Bus, Sink, Source, Transformer, Flow


periods = 20

timeindex = pd.date_range(start='2020-01-01', periods=periods, freq='H')

x = np.arange(0, periods, 1)
demand_ts = 0.5 * np.cos(x) + 1

pv_ts = 0.5 * np.sin(x) + 0.5

es = EnergySystem(timeindex=timeindex)


# TODO: Create a bus and some more components and connect their Flows to the bus.


# es.add()  # TODO: Add the bus and the components to the energysystem

# om = Model(es)

# om.solve()

# results = om.results()

# string_results = outputlib.processing.convert_keys_to_strings(results)

# # collect all timeseries in a DataFrame
# sequences = {k: v['sequences'] for k, v in string_results.items()}

# sequences = pd.concat(sequences, axis=1)

# print(sequences)

# # plot
# idx = pd.IndexSlice
# fig, ax = plt.subplots()
# sequences.loc[:,idx[:,'electricity_bus',:]].plot.area(ax=ax, stacked=True)
# sequences.loc[:,idx[:,'electricity_demand',:]].plot(ax=ax, c='r')
# plt.show()
