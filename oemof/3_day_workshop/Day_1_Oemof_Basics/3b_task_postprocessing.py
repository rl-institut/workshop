#!/usr/bin/env python

# Postprocessing and plots

"""
Edited from: https://github.com/rl-institut/workshop

This script presents the basic structure for a dispatch and investment optimization with oemof. Tasks:

1) Load the stored energy system
2) Filter the results to display
   a) Dispatch timeseries of dispatchable plants
   b) Timeseries for storage charge and discharge
   c) Timeseries of stored capacity (SOC)
   
3) Filter the parameters to display
   a) installed capacities
   b) variable costs

4) Calculate annual sums of all electricity generating units

5) Plot
    a) The energy fed in by each plant
    b) The energy fed in by each plant within a week
    c) A barplot of the installed capacities.


"""

import pandas as pd
import matplotlib.pyplot as plt

import oemof.solph as solph
import oemof.outputlib as outputlib

# ## Restore the energysystem with results
energysystem = solph.EnergySystem()
energysystem.restore(dpath=None, filename=None)
results = energysystem.results['main']

# ### Get all the flows into and out of the electricity bus
results_bus_el = outputlib.views.node(results, 'electricity')['sequences']
results_bus_el.columns = [col[0] for col in results_bus_el.columns]
results_bus_el.index.name = 'timeindex'

# ### Prepare input parameters for postprocessing
params = energysystem.params

# ## Define color dictionary
cdict = {('chp_gas', 'electricity'): '#eeac7e',
        ('pp_coal', 'electricity'): '#0f2e2e',
        ('pv', 'electricity'): '#ffde32',
        ('wind', 'electricity'): '#4ca7c3',
        ('electricity', 'demand_el'): '#000000',
        ('electricity', 'storage_el'): '#E04644',
        ('storage_el', 'electricity'): '#B7D968',
        ('electricity', 'excess_el'): '#C748E2',
        ('shortage_el', 'electricity'): '#B576AD'}
