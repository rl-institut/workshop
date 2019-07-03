#!/usr/bin/env python

# Postprocessing and plots

"""

Dieses Skript bietet ein Gerüst für die Betriebsoptimierung eines Energiesystems mit oemof.

* Lade das gespeicherte Energiesystem
* Filtere die Ergebnisse (results) nach
  * Einsatzzeitreihen regelbare Kraftwerken
  * Zeitreihen für Speicherbe-/entladung
  * Zeitreihe für Speicherstand

* Filtere die Parameter (params) nach
  * Installierten Leistungen
  * Variablen Kosten

* Berechne Jahressummen
  * die Jahresenergiemenge für die verschiedenen Stromerzeuger


* Plots
  * Plotte die eingespeiste Energie für Kraftwerke und Erneuerbare
  * Plotte die wöchentlich eingespeiste Energie (Tipp: pandas.resample kann dabei helfen)
  * Erstelle einen Barplot der installierten Leistungen

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
