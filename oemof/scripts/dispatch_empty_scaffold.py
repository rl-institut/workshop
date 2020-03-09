import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

from oemof.solph import EnergySystem, Model, Bus, Sink, Source, Transformer, Flow


periods = 20

timeindex = pd.date_range(start='2020-01-01', periods=periods, freq='H')

x = np.arange(0, periods, 1)
demand_ts = 0.5 * np.cos(x) + 1









# results = None
#
# string_results = None
#
# # collect all timeseries in a DataFrame
# sequences = {k: v['sequences'] for k, v in string_results.items()}
#
# sequences = pd.concat(sequences, axis=1)
#
# print(sequences)
#
# # plot
# idx = pd.IndexSlice
# fig, ax = plt.subplots()
# sequences.loc[:,idx[:,'el_bus',:]].plot.area(ax=ax, stacked=True)
# sequences.loc[:,idx[:,'el_demand',:]].plot(ax=ax, c='r')
# plt.show()
