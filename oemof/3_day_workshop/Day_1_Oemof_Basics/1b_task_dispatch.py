#!/usr/bin/env python

"""
Edited based on https://github.com/rl-institut/workshop

This script includes the basic sections necessary for optimizing the operation of an energy system in oemof. Tasks:

1) Load input data with pandas from input_data.csv
2) To complete the model,
    a) create all necessary components of the energy system (compare file energysystem.png)
    b) parameterize the components
    c) add the components to the energy system
"""


import pandas as pd
import matplotlib.pyplot as plt

from oemof.solph import Sink, Source, Transformer, Bus, Flow, EnergySystem, Model
from oemof.solph.components import GenericStorage
import oemof.outputlib as outputlib

# ## Specify solver
solver = 'cbc'

# ## Create an energy system and load data
datetimeindex = pd.date_range('1/1/2016', periods=24*365, freq='H')
energysystem = EnergySystem(timeindex=datetimeindex)

filename = ''
data = pd.read_csv(filename, sep=",")
# ## Create Buses


# ## Create components


# ## Add all to the energysystem
energysystem.add()


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
