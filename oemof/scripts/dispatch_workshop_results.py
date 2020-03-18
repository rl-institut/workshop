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

bus_el = Bus(label='electricity_bus')

bus_gas = Bus(label='gas_bus')

source_gas = Source(label='gas_source',
                    outputs={bus_gas: Flow(variable_costs=100)})

gas_pp = Transformer(label='powerplant',
                     inputs={bus_gas: Flow()},
                     outputs={bus_el: Flow(nominal_value=10)})

pv = Source(label='pv',
            outputs={bus_el: Flow(nominal_value=5,
                                  fixed=True,
                                  actual_value=pv_ts)})

demand_el = Sink(label='electricity_demand',
                 inputs={bus_el: Flow(nominal_value=2,
                                      fixed=True,
                                      actual_value=demand_ts)})

curtailment = Sink(label='curtailment',
                   inputs={bus_el: Flow(nominal_value=5,
                                        max=pv_ts)})

es.add(bus_el, bus_gas, source_gas, gas_pp, pv, demand_el, curtailment)

optimodel = Model(es)

optimodel.solve()

results = optimodel.results()

string_results = outputlib.processing.convert_keys_to_strings(results)

# collect all timeseries in a DataFrame
sequences = {k: v['sequences'] for k, v in string_results.items()}

sequences = pd.concat(sequences, axis=1)

print(sequences)

# plot
idx = pd.IndexSlice
fig, ax = plt.subplots()
sequences.loc[:,idx[:,'electricity_bus',:]].plot.area(ax=ax, stacked=True)
sequences.loc[:,idx[:,'electricity_demand',:]].plot(ax=ax, c='r')
plt.show()
