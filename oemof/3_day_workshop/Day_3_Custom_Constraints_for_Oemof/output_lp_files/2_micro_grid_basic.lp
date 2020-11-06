\* Source Pyomo model name=Model *\

min 
objective:
+0.18984229983145307 GenericInvestmentStorageBlock_invest(storage)
+0.10644211640996434 InvestmentFlow_invest(genset_electricity_bus)
+0.1648820284740232 InvestmentFlow_invest(pv_electricity_bus)
+0.43968540926406191 InvestmentFlow_invest(wind_electricity_bus)
+0.063761955366631234 flow(diesel_fuel_bus_0)
+0.063761955366631234 flow(diesel_fuel_bus_1)
+0.063761955366631234 flow(diesel_fuel_bus_10)
+0.063761955366631234 flow(diesel_fuel_bus_11)
+0.063761955366631234 flow(diesel_fuel_bus_12)
+0.063761955366631234 flow(diesel_fuel_bus_13)
+0.063761955366631234 flow(diesel_fuel_bus_14)
+0.063761955366631234 flow(diesel_fuel_bus_15)
+0.063761955366631234 flow(diesel_fuel_bus_16)
+0.063761955366631234 flow(diesel_fuel_bus_17)
+0.063761955366631234 flow(diesel_fuel_bus_18)
+0.063761955366631234 flow(diesel_fuel_bus_19)
+0.063761955366631234 flow(diesel_fuel_bus_2)
+0.063761955366631234 flow(diesel_fuel_bus_20)
+0.063761955366631234 flow(diesel_fuel_bus_21)
+0.063761955366631234 flow(diesel_fuel_bus_22)
+0.063761955366631234 flow(diesel_fuel_bus_23)
+0.063761955366631234 flow(diesel_fuel_bus_3)
+0.063761955366631234 flow(diesel_fuel_bus_4)
+0.063761955366631234 flow(diesel_fuel_bus_5)
+0.063761955366631234 flow(diesel_fuel_bus_6)
+0.063761955366631234 flow(diesel_fuel_bus_7)
+0.063761955366631234 flow(diesel_fuel_bus_8)
+0.063761955366631234 flow(diesel_fuel_bus_9)

s.t.

c_e_Bus_balance(electricity_bus_0)_:
-1 flow(electricity_bus_excess_0)
-1 flow(electricity_bus_storage_0)
+1 flow(genset_electricity_bus_0)
+1 flow(pv_electricity_bus_0)
+1 flow(storage_electricity_bus_0)
+1 flow(wind_electricity_bus_0)
= 279.53099120000002

c_e_Bus_balance(electricity_bus_1)_:
-1 flow(electricity_bus_excess_1)
-1 flow(electricity_bus_storage_1)
+1 flow(genset_electricity_bus_1)
+1 flow(pv_electricity_bus_1)
+1 flow(storage_electricity_bus_1)
+1 flow(wind_electricity_bus_1)
= 266.80324295000003

c_e_Bus_balance(electricity_bus_2)_:
-1 flow(electricity_bus_excess_2)
-1 flow(electricity_bus_storage_2)
+1 flow(genset_electricity_bus_2)
+1 flow(pv_electricity_bus_2)
+1 flow(storage_electricity_bus_2)
+1 flow(wind_electricity_bus_2)
= 253.02937845

c_e_Bus_balance(electricity_bus_3)_:
-1 flow(electricity_bus_excess_3)
-1 flow(electricity_bus_storage_3)
+1 flow(genset_electricity_bus_3)
+1 flow(pv_electricity_bus_3)
+1 flow(storage_electricity_bus_3)
+1 flow(wind_electricity_bus_3)
= 252.07043849999999

c_e_Bus_balance(electricity_bus_4)_:
-1 flow(electricity_bus_excess_4)
-1 flow(electricity_bus_storage_4)
+1 flow(genset_electricity_bus_4)
+1 flow(pv_electricity_bus_4)
+1 flow(storage_electricity_bus_4)
+1 flow(wind_electricity_bus_4)
= 253.55243659999999

c_e_Bus_balance(electricity_bus_5)_:
-1 flow(electricity_bus_excess_5)
-1 flow(electricity_bus_storage_5)
+1 flow(genset_electricity_bus_5)
+1 flow(pv_electricity_bus_5)
+1 flow(storage_electricity_bus_5)
+1 flow(wind_electricity_bus_5)
= 255.68825735000001

c_e_Bus_balance(electricity_bus_6)_:
-1 flow(electricity_bus_excess_6)
-1 flow(electricity_bus_storage_6)
+1 flow(genset_electricity_bus_6)
+1 flow(pv_electricity_bus_6)
+1 flow(storage_electricity_bus_6)
+1 flow(wind_electricity_bus_6)
= 270.90053180000001

c_e_Bus_balance(electricity_bus_7)_:
-1 flow(electricity_bus_excess_7)
-1 flow(electricity_bus_storage_7)
+1 flow(genset_electricity_bus_7)
+1 flow(pv_electricity_bus_7)
+1 flow(storage_electricity_bus_7)
+1 flow(wind_electricity_bus_7)
= 284.63080809999997

c_e_Bus_balance(electricity_bus_8)_:
-1 flow(electricity_bus_excess_8)
-1 flow(electricity_bus_storage_8)
+1 flow(genset_electricity_bus_8)
+1 flow(pv_electricity_bus_8)
+1 flow(storage_electricity_bus_8)
+1 flow(wind_electricity_bus_8)
= 301.49943335

c_e_Bus_balance(electricity_bus_9)_:
-1 flow(electricity_bus_excess_9)
-1 flow(electricity_bus_storage_9)
+1 flow(genset_electricity_bus_9)
+1 flow(pv_electricity_bus_9)
+1 flow(storage_electricity_bus_9)
+1 flow(wind_electricity_bus_9)
= 314.53229885000002

c_e_Bus_balance(electricity_bus_10)_:
-1 flow(electricity_bus_excess_10)
-1 flow(electricity_bus_storage_10)
+1 flow(genset_electricity_bus_10)
+1 flow(pv_electricity_bus_10)
+1 flow(storage_electricity_bus_10)
+1 flow(wind_electricity_bus_10)
= 317.32194229999999

c_e_Bus_balance(electricity_bus_11)_:
-1 flow(electricity_bus_excess_11)
-1 flow(electricity_bus_storage_11)
+1 flow(genset_electricity_bus_11)
+1 flow(pv_electricity_bus_11)
+1 flow(storage_electricity_bus_11)
+1 flow(wind_electricity_bus_11)
= 307.51460204999995

c_e_Bus_balance(electricity_bus_12)_:
-1 flow(electricity_bus_excess_12)
-1 flow(electricity_bus_storage_12)
+1 flow(genset_electricity_bus_12)
+1 flow(pv_electricity_bus_12)
+1 flow(storage_electricity_bus_12)
+1 flow(wind_electricity_bus_12)
= 302.89425510000001

c_e_Bus_balance(electricity_bus_13)_:
-1 flow(electricity_bus_excess_13)
-1 flow(electricity_bus_storage_13)
+1 flow(genset_electricity_bus_13)
+1 flow(pv_electricity_bus_13)
+1 flow(storage_electricity_bus_13)
+1 flow(wind_electricity_bus_13)
= 297.35855635000001

c_e_Bus_balance(electricity_bus_14)_:
-1 flow(electricity_bus_excess_14)
-1 flow(electricity_bus_storage_14)
+1 flow(genset_electricity_bus_14)
+1 flow(pv_electricity_bus_14)
+1 flow(storage_electricity_bus_14)
+1 flow(wind_electricity_bus_14)
= 303.6352541

c_e_Bus_balance(electricity_bus_15)_:
-1 flow(electricity_bus_excess_15)
-1 flow(electricity_bus_storage_15)
+1 flow(genset_electricity_bus_15)
+1 flow(pv_electricity_bus_15)
+1 flow(storage_electricity_bus_15)
+1 flow(wind_electricity_bus_15)
= 340.33650075000003

c_e_Bus_balance(electricity_bus_16)_:
-1 flow(electricity_bus_excess_16)
-1 flow(electricity_bus_storage_16)
+1 flow(genset_electricity_bus_16)
+1 flow(pv_electricity_bus_16)
+1 flow(storage_electricity_bus_16)
+1 flow(wind_electricity_bus_16)
= 354.4154825

c_e_Bus_balance(electricity_bus_17)_:
-1 flow(electricity_bus_excess_17)
-1 flow(electricity_bus_storage_17)
+1 flow(genset_electricity_bus_17)
+1 flow(pv_electricity_bus_17)
+1 flow(storage_electricity_bus_17)
+1 flow(wind_electricity_bus_17)
= 353.50013075000004

c_e_Bus_balance(electricity_bus_18)_:
-1 flow(electricity_bus_excess_18)
-1 flow(electricity_bus_storage_18)
+1 flow(genset_electricity_bus_18)
+1 flow(pv_electricity_bus_18)
+1 flow(storage_electricity_bus_18)
+1 flow(wind_electricity_bus_18)
= 340.59802980000001

c_e_Bus_balance(electricity_bus_19)_:
-1 flow(electricity_bus_excess_19)
-1 flow(electricity_bus_storage_19)
+1 flow(genset_electricity_bus_19)
+1 flow(pv_electricity_bus_19)
+1 flow(storage_electricity_bus_19)
+1 flow(wind_electricity_bus_19)
= 320.32952664999999

c_e_Bus_balance(electricity_bus_20)_:
-1 flow(electricity_bus_excess_20)
-1 flow(electricity_bus_storage_20)
+1 flow(genset_electricity_bus_20)
+1 flow(pv_electricity_bus_20)
+1 flow(storage_electricity_bus_20)
+1 flow(wind_electricity_bus_20)
= 304.89931129999997

c_e_Bus_balance(electricity_bus_21)_:
-1 flow(electricity_bus_excess_21)
-1 flow(electricity_bus_storage_21)
+1 flow(genset_electricity_bus_21)
+1 flow(pv_electricity_bus_21)
+1 flow(storage_electricity_bus_21)
+1 flow(wind_electricity_bus_21)
= 307.95048385000001

c_e_Bus_balance(electricity_bus_22)_:
-1 flow(electricity_bus_excess_22)
-1 flow(electricity_bus_storage_22)
+1 flow(genset_electricity_bus_22)
+1 flow(pv_electricity_bus_22)
+1 flow(storage_electricity_bus_22)
+1 flow(wind_electricity_bus_22)
= 283.58469184999996

c_e_Bus_balance(electricity_bus_23)_:
-1 flow(electricity_bus_excess_23)
-1 flow(electricity_bus_storage_23)
+1 flow(genset_electricity_bus_23)
+1 flow(pv_electricity_bus_23)
+1 flow(storage_electricity_bus_23)
+1 flow(wind_electricity_bus_23)
= 267.98012379999994

c_e_Bus_balance(fuel_bus_0)_:
+1 flow(diesel_fuel_bus_0)
-1 flow(fuel_bus_genset_0)
= 0

c_e_Bus_balance(fuel_bus_1)_:
+1 flow(diesel_fuel_bus_1)
-1 flow(fuel_bus_genset_1)
= 0

c_e_Bus_balance(fuel_bus_2)_:
+1 flow(diesel_fuel_bus_2)
-1 flow(fuel_bus_genset_2)
= 0

c_e_Bus_balance(fuel_bus_3)_:
+1 flow(diesel_fuel_bus_3)
-1 flow(fuel_bus_genset_3)
= 0

c_e_Bus_balance(fuel_bus_4)_:
+1 flow(diesel_fuel_bus_4)
-1 flow(fuel_bus_genset_4)
= 0

c_e_Bus_balance(fuel_bus_5)_:
+1 flow(diesel_fuel_bus_5)
-1 flow(fuel_bus_genset_5)
= 0

c_e_Bus_balance(fuel_bus_6)_:
+1 flow(diesel_fuel_bus_6)
-1 flow(fuel_bus_genset_6)
= 0

c_e_Bus_balance(fuel_bus_7)_:
+1 flow(diesel_fuel_bus_7)
-1 flow(fuel_bus_genset_7)
= 0

c_e_Bus_balance(fuel_bus_8)_:
+1 flow(diesel_fuel_bus_8)
-1 flow(fuel_bus_genset_8)
= 0

c_e_Bus_balance(fuel_bus_9)_:
+1 flow(diesel_fuel_bus_9)
-1 flow(fuel_bus_genset_9)
= 0

c_e_Bus_balance(fuel_bus_10)_:
+1 flow(diesel_fuel_bus_10)
-1 flow(fuel_bus_genset_10)
= 0

c_e_Bus_balance(fuel_bus_11)_:
+1 flow(diesel_fuel_bus_11)
-1 flow(fuel_bus_genset_11)
= 0

c_e_Bus_balance(fuel_bus_12)_:
+1 flow(diesel_fuel_bus_12)
-1 flow(fuel_bus_genset_12)
= 0

c_e_Bus_balance(fuel_bus_13)_:
+1 flow(diesel_fuel_bus_13)
-1 flow(fuel_bus_genset_13)
= 0

c_e_Bus_balance(fuel_bus_14)_:
+1 flow(diesel_fuel_bus_14)
-1 flow(fuel_bus_genset_14)
= 0

c_e_Bus_balance(fuel_bus_15)_:
+1 flow(diesel_fuel_bus_15)
-1 flow(fuel_bus_genset_15)
= 0

c_e_Bus_balance(fuel_bus_16)_:
+1 flow(diesel_fuel_bus_16)
-1 flow(fuel_bus_genset_16)
= 0

c_e_Bus_balance(fuel_bus_17)_:
+1 flow(diesel_fuel_bus_17)
-1 flow(fuel_bus_genset_17)
= 0

c_e_Bus_balance(fuel_bus_18)_:
+1 flow(diesel_fuel_bus_18)
-1 flow(fuel_bus_genset_18)
= 0

c_e_Bus_balance(fuel_bus_19)_:
+1 flow(diesel_fuel_bus_19)
-1 flow(fuel_bus_genset_19)
= 0

c_e_Bus_balance(fuel_bus_20)_:
+1 flow(diesel_fuel_bus_20)
-1 flow(fuel_bus_genset_20)
= 0

c_e_Bus_balance(fuel_bus_21)_:
+1 flow(diesel_fuel_bus_21)
-1 flow(fuel_bus_genset_21)
= 0

c_e_Bus_balance(fuel_bus_22)_:
+1 flow(diesel_fuel_bus_22)
-1 flow(fuel_bus_genset_22)
= 0

c_e_Bus_balance(fuel_bus_23)_:
+1 flow(diesel_fuel_bus_23)
-1 flow(fuel_bus_genset_23)
= 0

c_e_Transformer_relation(genset_fuel_bus_electricity_bus_0)_:
+1 flow(fuel_bus_genset_0)
-3.0303030303030303 flow(genset_electricity_bus_0)
= 0

c_e_Transformer_relation(genset_fuel_bus_electricity_bus_1)_:
+1 flow(fuel_bus_genset_1)
-3.0303030303030303 flow(genset_electricity_bus_1)
= 0

c_e_Transformer_relation(genset_fuel_bus_electricity_bus_2)_:
+1 flow(fuel_bus_genset_2)
-3.0303030303030303 flow(genset_electricity_bus_2)
= 0

c_e_Transformer_relation(genset_fuel_bus_electricity_bus_3)_:
+1 flow(fuel_bus_genset_3)
-3.0303030303030303 flow(genset_electricity_bus_3)
= 0

c_e_Transformer_relation(genset_fuel_bus_electricity_bus_4)_:
+1 flow(fuel_bus_genset_4)
-3.0303030303030303 flow(genset_electricity_bus_4)
= 0

c_e_Transformer_relation(genset_fuel_bus_electricity_bus_5)_:
+1 flow(fuel_bus_genset_5)
-3.0303030303030303 flow(genset_electricity_bus_5)
= 0

c_e_Transformer_relation(genset_fuel_bus_electricity_bus_6)_:
+1 flow(fuel_bus_genset_6)
-3.0303030303030303 flow(genset_electricity_bus_6)
= 0

c_e_Transformer_relation(genset_fuel_bus_electricity_bus_7)_:
+1 flow(fuel_bus_genset_7)
-3.0303030303030303 flow(genset_electricity_bus_7)
= 0

c_e_Transformer_relation(genset_fuel_bus_electricity_bus_8)_:
+1 flow(fuel_bus_genset_8)
-3.0303030303030303 flow(genset_electricity_bus_8)
= 0

c_e_Transformer_relation(genset_fuel_bus_electricity_bus_9)_:
+1 flow(fuel_bus_genset_9)
-3.0303030303030303 flow(genset_electricity_bus_9)
= 0

c_e_Transformer_relation(genset_fuel_bus_electricity_bus_10)_:
+1 flow(fuel_bus_genset_10)
-3.0303030303030303 flow(genset_electricity_bus_10)
= 0

c_e_Transformer_relation(genset_fuel_bus_electricity_bus_11)_:
+1 flow(fuel_bus_genset_11)
-3.0303030303030303 flow(genset_electricity_bus_11)
= 0

c_e_Transformer_relation(genset_fuel_bus_electricity_bus_12)_:
+1 flow(fuel_bus_genset_12)
-3.0303030303030303 flow(genset_electricity_bus_12)
= 0

c_e_Transformer_relation(genset_fuel_bus_electricity_bus_13)_:
+1 flow(fuel_bus_genset_13)
-3.0303030303030303 flow(genset_electricity_bus_13)
= 0

c_e_Transformer_relation(genset_fuel_bus_electricity_bus_14)_:
+1 flow(fuel_bus_genset_14)
-3.0303030303030303 flow(genset_electricity_bus_14)
= 0

c_e_Transformer_relation(genset_fuel_bus_electricity_bus_15)_:
+1 flow(fuel_bus_genset_15)
-3.0303030303030303 flow(genset_electricity_bus_15)
= 0

c_e_Transformer_relation(genset_fuel_bus_electricity_bus_16)_:
+1 flow(fuel_bus_genset_16)
-3.0303030303030303 flow(genset_electricity_bus_16)
= 0

c_e_Transformer_relation(genset_fuel_bus_electricity_bus_17)_:
+1 flow(fuel_bus_genset_17)
-3.0303030303030303 flow(genset_electricity_bus_17)
= 0

c_e_Transformer_relation(genset_fuel_bus_electricity_bus_18)_:
+1 flow(fuel_bus_genset_18)
-3.0303030303030303 flow(genset_electricity_bus_18)
= 0

c_e_Transformer_relation(genset_fuel_bus_electricity_bus_19)_:
+1 flow(fuel_bus_genset_19)
-3.0303030303030303 flow(genset_electricity_bus_19)
= 0

c_e_Transformer_relation(genset_fuel_bus_electricity_bus_20)_:
+1 flow(fuel_bus_genset_20)
-3.0303030303030303 flow(genset_electricity_bus_20)
= 0

c_e_Transformer_relation(genset_fuel_bus_electricity_bus_21)_:
+1 flow(fuel_bus_genset_21)
-3.0303030303030303 flow(genset_electricity_bus_21)
= 0

c_e_Transformer_relation(genset_fuel_bus_electricity_bus_22)_:
+1 flow(fuel_bus_genset_22)
-3.0303030303030303 flow(genset_electricity_bus_22)
= 0

c_e_Transformer_relation(genset_fuel_bus_electricity_bus_23)_:
+1 flow(fuel_bus_genset_23)
-3.0303030303030303 flow(genset_electricity_bus_23)
= 0

c_e_InvestmentFlow_fixed(pv_electricity_bus_0)_:
+1 flow(pv_electricity_bus_0)
= 0

c_e_InvestmentFlow_fixed(pv_electricity_bus_1)_:
+1 flow(pv_electricity_bus_1)
= 0

c_e_InvestmentFlow_fixed(pv_electricity_bus_2)_:
+1 flow(pv_electricity_bus_2)
= 0

c_e_InvestmentFlow_fixed(pv_electricity_bus_3)_:
+1 flow(pv_electricity_bus_3)
= 0

c_e_InvestmentFlow_fixed(pv_electricity_bus_4)_:
+1 flow(pv_electricity_bus_4)
= 0

c_e_InvestmentFlow_fixed(pv_electricity_bus_5)_:
+1 flow(pv_electricity_bus_5)
= 0

c_e_InvestmentFlow_fixed(pv_electricity_bus_6)_:
+1 flow(pv_electricity_bus_6)
= 0

c_e_InvestmentFlow_fixed(pv_electricity_bus_7)_:
-0.065722000000000003 InvestmentFlow_invest(pv_electricity_bus)
+1 flow(pv_electricity_bus_7)
= 0

c_e_InvestmentFlow_fixed(pv_electricity_bus_8)_:
-0.20696199999999998 InvestmentFlow_invest(pv_electricity_bus)
+1 flow(pv_electricity_bus_8)
= 0

c_e_InvestmentFlow_fixed(pv_electricity_bus_9)_:
-0.33063799999999999 InvestmentFlow_invest(pv_electricity_bus)
+1 flow(pv_electricity_bus_9)
= 0

c_e_InvestmentFlow_fixed(pv_electricity_bus_10)_:
-0.40313100000000002 InvestmentFlow_invest(pv_electricity_bus)
+1 flow(pv_electricity_bus_10)
= 0

c_e_InvestmentFlow_fixed(pv_electricity_bus_11)_:
-0.411138 InvestmentFlow_invest(pv_electricity_bus)
+1 flow(pv_electricity_bus_11)
= 0

c_e_InvestmentFlow_fixed(pv_electricity_bus_12)_:
-0.367118 InvestmentFlow_invest(pv_electricity_bus)
+1 flow(pv_electricity_bus_12)
= 0

c_e_InvestmentFlow_fixed(pv_electricity_bus_13)_:
-0.26857700000000001 InvestmentFlow_invest(pv_electricity_bus)
+1 flow(pv_electricity_bus_13)
= 0

c_e_InvestmentFlow_fixed(pv_electricity_bus_14)_:
-0.11243399999999999 InvestmentFlow_invest(pv_electricity_bus)
+1 flow(pv_electricity_bus_14)
= 0

c_e_InvestmentFlow_fixed(pv_electricity_bus_15)_:
-0.0020409999999999998 InvestmentFlow_invest(pv_electricity_bus)
+1 flow(pv_electricity_bus_15)
= 0

c_e_InvestmentFlow_fixed(pv_electricity_bus_16)_:
+1 flow(pv_electricity_bus_16)
= 0

c_e_InvestmentFlow_fixed(pv_electricity_bus_17)_:
+1 flow(pv_electricity_bus_17)
= 0

c_e_InvestmentFlow_fixed(pv_electricity_bus_18)_:
+1 flow(pv_electricity_bus_18)
= 0

c_e_InvestmentFlow_fixed(pv_electricity_bus_19)_:
+1 flow(pv_electricity_bus_19)
= 0

c_e_InvestmentFlow_fixed(pv_electricity_bus_20)_:
+1 flow(pv_electricity_bus_20)
= 0

c_e_InvestmentFlow_fixed(pv_electricity_bus_21)_:
+1 flow(pv_electricity_bus_21)
= 0

c_e_InvestmentFlow_fixed(pv_electricity_bus_22)_:
+1 flow(pv_electricity_bus_22)
= 0

c_e_InvestmentFlow_fixed(pv_electricity_bus_23)_:
+1 flow(pv_electricity_bus_23)
= 0

c_e_InvestmentFlow_fixed(wind_electricity_bus_0)_:
-0.31556899999999999 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_0)
= 0

c_e_InvestmentFlow_fixed(wind_electricity_bus_1)_:
-0.31157199999999996 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_1)
= 0

c_e_InvestmentFlow_fixed(wind_electricity_bus_2)_:
-0.30400500000000003 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_2)
= 0

c_e_InvestmentFlow_fixed(wind_electricity_bus_3)_:
-0.28287199999999996 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_3)
= 0

c_e_InvestmentFlow_fixed(wind_electricity_bus_4)_:
-0.25396999999999997 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_4)
= 0

c_e_InvestmentFlow_fixed(wind_electricity_bus_5)_:
-0.224077 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_5)
= 0

c_e_InvestmentFlow_fixed(wind_electricity_bus_6)_:
-0.19358 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_6)
= 0

c_e_InvestmentFlow_fixed(wind_electricity_bus_7)_:
-0.15992500000000001 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_7)
= 0

c_e_InvestmentFlow_fixed(wind_electricity_bus_8)_:
-0.12711500000000001 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_8)
= 0

c_e_InvestmentFlow_fixed(wind_electricity_bus_9)_:
-0.11749100000000001 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_9)
= 0

c_e_InvestmentFlow_fixed(wind_electricity_bus_10)_:
-0.115909 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_10)
= 0

c_e_InvestmentFlow_fixed(wind_electricity_bus_11)_:
-0.10452400000000001 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_11)
= 0

c_e_InvestmentFlow_fixed(wind_electricity_bus_12)_:
-0.090434 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_12)
= 0

c_e_InvestmentFlow_fixed(wind_electricity_bus_13)_:
-0.084694000000000005 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_13)
= 0

c_e_InvestmentFlow_fixed(wind_electricity_bus_14)_:
-0.11590999999999999 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_14)
= 0

c_e_InvestmentFlow_fixed(wind_electricity_bus_15)_:
-0.16127900000000001 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_15)
= 0

c_e_InvestmentFlow_fixed(wind_electricity_bus_16)_:
-0.18877099999999999 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_16)
= 0

c_e_InvestmentFlow_fixed(wind_electricity_bus_17)_:
-0.20496599999999998 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_17)
= 0

c_e_InvestmentFlow_fixed(wind_electricity_bus_18)_:
-0.21605700000000003 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_18)
= 0

c_e_InvestmentFlow_fixed(wind_electricity_bus_19)_:
-0.22511900000000001 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_19)
= 0

c_e_InvestmentFlow_fixed(wind_electricity_bus_20)_:
-0.23353400000000002 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_20)
= 0

c_e_InvestmentFlow_fixed(wind_electricity_bus_21)_:
-0.26206299999999999 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_21)
= 0

c_e_InvestmentFlow_fixed(wind_electricity_bus_22)_:
-0.30506500000000003 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_22)
= 0

c_e_InvestmentFlow_fixed(wind_electricity_bus_23)_:
-0.355796 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_23)
= 0

c_u_InvestmentFlow_max(electricity_bus_storage_0)_:
-1 InvestmentFlow_invest(electricity_bus_storage)
+1 flow(electricity_bus_storage_0)
<= 0

c_u_InvestmentFlow_max(electricity_bus_storage_1)_:
-1 InvestmentFlow_invest(electricity_bus_storage)
+1 flow(electricity_bus_storage_1)
<= 0

c_u_InvestmentFlow_max(electricity_bus_storage_2)_:
-1 InvestmentFlow_invest(electricity_bus_storage)
+1 flow(electricity_bus_storage_2)
<= 0

c_u_InvestmentFlow_max(electricity_bus_storage_3)_:
-1 InvestmentFlow_invest(electricity_bus_storage)
+1 flow(electricity_bus_storage_3)
<= 0

c_u_InvestmentFlow_max(electricity_bus_storage_4)_:
-1 InvestmentFlow_invest(electricity_bus_storage)
+1 flow(electricity_bus_storage_4)
<= 0

c_u_InvestmentFlow_max(electricity_bus_storage_5)_:
-1 InvestmentFlow_invest(electricity_bus_storage)
+1 flow(electricity_bus_storage_5)
<= 0

c_u_InvestmentFlow_max(electricity_bus_storage_6)_:
-1 InvestmentFlow_invest(electricity_bus_storage)
+1 flow(electricity_bus_storage_6)
<= 0

c_u_InvestmentFlow_max(electricity_bus_storage_7)_:
-1 InvestmentFlow_invest(electricity_bus_storage)
+1 flow(electricity_bus_storage_7)
<= 0

c_u_InvestmentFlow_max(electricity_bus_storage_8)_:
-1 InvestmentFlow_invest(electricity_bus_storage)
+1 flow(electricity_bus_storage_8)
<= 0

c_u_InvestmentFlow_max(electricity_bus_storage_9)_:
-1 InvestmentFlow_invest(electricity_bus_storage)
+1 flow(electricity_bus_storage_9)
<= 0

c_u_InvestmentFlow_max(electricity_bus_storage_10)_:
-1 InvestmentFlow_invest(electricity_bus_storage)
+1 flow(electricity_bus_storage_10)
<= 0

c_u_InvestmentFlow_max(electricity_bus_storage_11)_:
-1 InvestmentFlow_invest(electricity_bus_storage)
+1 flow(electricity_bus_storage_11)
<= 0

c_u_InvestmentFlow_max(electricity_bus_storage_12)_:
-1 InvestmentFlow_invest(electricity_bus_storage)
+1 flow(electricity_bus_storage_12)
<= 0

c_u_InvestmentFlow_max(electricity_bus_storage_13)_:
-1 InvestmentFlow_invest(electricity_bus_storage)
+1 flow(electricity_bus_storage_13)
<= 0

c_u_InvestmentFlow_max(electricity_bus_storage_14)_:
-1 InvestmentFlow_invest(electricity_bus_storage)
+1 flow(electricity_bus_storage_14)
<= 0

c_u_InvestmentFlow_max(electricity_bus_storage_15)_:
-1 InvestmentFlow_invest(electricity_bus_storage)
+1 flow(electricity_bus_storage_15)
<= 0

c_u_InvestmentFlow_max(electricity_bus_storage_16)_:
-1 InvestmentFlow_invest(electricity_bus_storage)
+1 flow(electricity_bus_storage_16)
<= 0

c_u_InvestmentFlow_max(electricity_bus_storage_17)_:
-1 InvestmentFlow_invest(electricity_bus_storage)
+1 flow(electricity_bus_storage_17)
<= 0

c_u_InvestmentFlow_max(electricity_bus_storage_18)_:
-1 InvestmentFlow_invest(electricity_bus_storage)
+1 flow(electricity_bus_storage_18)
<= 0

c_u_InvestmentFlow_max(electricity_bus_storage_19)_:
-1 InvestmentFlow_invest(electricity_bus_storage)
+1 flow(electricity_bus_storage_19)
<= 0

c_u_InvestmentFlow_max(electricity_bus_storage_20)_:
-1 InvestmentFlow_invest(electricity_bus_storage)
+1 flow(electricity_bus_storage_20)
<= 0

c_u_InvestmentFlow_max(electricity_bus_storage_21)_:
-1 InvestmentFlow_invest(electricity_bus_storage)
+1 flow(electricity_bus_storage_21)
<= 0

c_u_InvestmentFlow_max(electricity_bus_storage_22)_:
-1 InvestmentFlow_invest(electricity_bus_storage)
+1 flow(electricity_bus_storage_22)
<= 0

c_u_InvestmentFlow_max(electricity_bus_storage_23)_:
-1 InvestmentFlow_invest(electricity_bus_storage)
+1 flow(electricity_bus_storage_23)
<= 0

c_u_InvestmentFlow_max(genset_electricity_bus_0)_:
-1 InvestmentFlow_invest(genset_electricity_bus)
+1 flow(genset_electricity_bus_0)
<= 0

c_u_InvestmentFlow_max(genset_electricity_bus_1)_:
-1 InvestmentFlow_invest(genset_electricity_bus)
+1 flow(genset_electricity_bus_1)
<= 0

c_u_InvestmentFlow_max(genset_electricity_bus_2)_:
-1 InvestmentFlow_invest(genset_electricity_bus)
+1 flow(genset_electricity_bus_2)
<= 0

c_u_InvestmentFlow_max(genset_electricity_bus_3)_:
-1 InvestmentFlow_invest(genset_electricity_bus)
+1 flow(genset_electricity_bus_3)
<= 0

c_u_InvestmentFlow_max(genset_electricity_bus_4)_:
-1 InvestmentFlow_invest(genset_electricity_bus)
+1 flow(genset_electricity_bus_4)
<= 0

c_u_InvestmentFlow_max(genset_electricity_bus_5)_:
-1 InvestmentFlow_invest(genset_electricity_bus)
+1 flow(genset_electricity_bus_5)
<= 0

c_u_InvestmentFlow_max(genset_electricity_bus_6)_:
-1 InvestmentFlow_invest(genset_electricity_bus)
+1 flow(genset_electricity_bus_6)
<= 0

c_u_InvestmentFlow_max(genset_electricity_bus_7)_:
-1 InvestmentFlow_invest(genset_electricity_bus)
+1 flow(genset_electricity_bus_7)
<= 0

c_u_InvestmentFlow_max(genset_electricity_bus_8)_:
-1 InvestmentFlow_invest(genset_electricity_bus)
+1 flow(genset_electricity_bus_8)
<= 0

c_u_InvestmentFlow_max(genset_electricity_bus_9)_:
-1 InvestmentFlow_invest(genset_electricity_bus)
+1 flow(genset_electricity_bus_9)
<= 0

c_u_InvestmentFlow_max(genset_electricity_bus_10)_:
-1 InvestmentFlow_invest(genset_electricity_bus)
+1 flow(genset_electricity_bus_10)
<= 0

c_u_InvestmentFlow_max(genset_electricity_bus_11)_:
-1 InvestmentFlow_invest(genset_electricity_bus)
+1 flow(genset_electricity_bus_11)
<= 0

c_u_InvestmentFlow_max(genset_electricity_bus_12)_:
-1 InvestmentFlow_invest(genset_electricity_bus)
+1 flow(genset_electricity_bus_12)
<= 0

c_u_InvestmentFlow_max(genset_electricity_bus_13)_:
-1 InvestmentFlow_invest(genset_electricity_bus)
+1 flow(genset_electricity_bus_13)
<= 0

c_u_InvestmentFlow_max(genset_electricity_bus_14)_:
-1 InvestmentFlow_invest(genset_electricity_bus)
+1 flow(genset_electricity_bus_14)
<= 0

c_u_InvestmentFlow_max(genset_electricity_bus_15)_:
-1 InvestmentFlow_invest(genset_electricity_bus)
+1 flow(genset_electricity_bus_15)
<= 0

c_u_InvestmentFlow_max(genset_electricity_bus_16)_:
-1 InvestmentFlow_invest(genset_electricity_bus)
+1 flow(genset_electricity_bus_16)
<= 0

c_u_InvestmentFlow_max(genset_electricity_bus_17)_:
-1 InvestmentFlow_invest(genset_electricity_bus)
+1 flow(genset_electricity_bus_17)
<= 0

c_u_InvestmentFlow_max(genset_electricity_bus_18)_:
-1 InvestmentFlow_invest(genset_electricity_bus)
+1 flow(genset_electricity_bus_18)
<= 0

c_u_InvestmentFlow_max(genset_electricity_bus_19)_:
-1 InvestmentFlow_invest(genset_electricity_bus)
+1 flow(genset_electricity_bus_19)
<= 0

c_u_InvestmentFlow_max(genset_electricity_bus_20)_:
-1 InvestmentFlow_invest(genset_electricity_bus)
+1 flow(genset_electricity_bus_20)
<= 0

c_u_InvestmentFlow_max(genset_electricity_bus_21)_:
-1 InvestmentFlow_invest(genset_electricity_bus)
+1 flow(genset_electricity_bus_21)
<= 0

c_u_InvestmentFlow_max(genset_electricity_bus_22)_:
-1 InvestmentFlow_invest(genset_electricity_bus)
+1 flow(genset_electricity_bus_22)
<= 0

c_u_InvestmentFlow_max(genset_electricity_bus_23)_:
-1 InvestmentFlow_invest(genset_electricity_bus)
+1 flow(genset_electricity_bus_23)
<= 0

c_u_InvestmentFlow_max(pv_electricity_bus_0)_:
-1 InvestmentFlow_invest(pv_electricity_bus)
+1 flow(pv_electricity_bus_0)
<= 0

c_u_InvestmentFlow_max(pv_electricity_bus_1)_:
-1 InvestmentFlow_invest(pv_electricity_bus)
+1 flow(pv_electricity_bus_1)
<= 0

c_u_InvestmentFlow_max(pv_electricity_bus_2)_:
-1 InvestmentFlow_invest(pv_electricity_bus)
+1 flow(pv_electricity_bus_2)
<= 0

c_u_InvestmentFlow_max(pv_electricity_bus_3)_:
-1 InvestmentFlow_invest(pv_electricity_bus)
+1 flow(pv_electricity_bus_3)
<= 0

c_u_InvestmentFlow_max(pv_electricity_bus_4)_:
-1 InvestmentFlow_invest(pv_electricity_bus)
+1 flow(pv_electricity_bus_4)
<= 0

c_u_InvestmentFlow_max(pv_electricity_bus_5)_:
-1 InvestmentFlow_invest(pv_electricity_bus)
+1 flow(pv_electricity_bus_5)
<= 0

c_u_InvestmentFlow_max(pv_electricity_bus_6)_:
-1 InvestmentFlow_invest(pv_electricity_bus)
+1 flow(pv_electricity_bus_6)
<= 0

c_u_InvestmentFlow_max(pv_electricity_bus_7)_:
-1 InvestmentFlow_invest(pv_electricity_bus)
+1 flow(pv_electricity_bus_7)
<= 0

c_u_InvestmentFlow_max(pv_electricity_bus_8)_:
-1 InvestmentFlow_invest(pv_electricity_bus)
+1 flow(pv_electricity_bus_8)
<= 0

c_u_InvestmentFlow_max(pv_electricity_bus_9)_:
-1 InvestmentFlow_invest(pv_electricity_bus)
+1 flow(pv_electricity_bus_9)
<= 0

c_u_InvestmentFlow_max(pv_electricity_bus_10)_:
-1 InvestmentFlow_invest(pv_electricity_bus)
+1 flow(pv_electricity_bus_10)
<= 0

c_u_InvestmentFlow_max(pv_electricity_bus_11)_:
-1 InvestmentFlow_invest(pv_electricity_bus)
+1 flow(pv_electricity_bus_11)
<= 0

c_u_InvestmentFlow_max(pv_electricity_bus_12)_:
-1 InvestmentFlow_invest(pv_electricity_bus)
+1 flow(pv_electricity_bus_12)
<= 0

c_u_InvestmentFlow_max(pv_electricity_bus_13)_:
-1 InvestmentFlow_invest(pv_electricity_bus)
+1 flow(pv_electricity_bus_13)
<= 0

c_u_InvestmentFlow_max(pv_electricity_bus_14)_:
-1 InvestmentFlow_invest(pv_electricity_bus)
+1 flow(pv_electricity_bus_14)
<= 0

c_u_InvestmentFlow_max(pv_electricity_bus_15)_:
-1 InvestmentFlow_invest(pv_electricity_bus)
+1 flow(pv_electricity_bus_15)
<= 0

c_u_InvestmentFlow_max(pv_electricity_bus_16)_:
-1 InvestmentFlow_invest(pv_electricity_bus)
+1 flow(pv_electricity_bus_16)
<= 0

c_u_InvestmentFlow_max(pv_electricity_bus_17)_:
-1 InvestmentFlow_invest(pv_electricity_bus)
+1 flow(pv_electricity_bus_17)
<= 0

c_u_InvestmentFlow_max(pv_electricity_bus_18)_:
-1 InvestmentFlow_invest(pv_electricity_bus)
+1 flow(pv_electricity_bus_18)
<= 0

c_u_InvestmentFlow_max(pv_electricity_bus_19)_:
-1 InvestmentFlow_invest(pv_electricity_bus)
+1 flow(pv_electricity_bus_19)
<= 0

c_u_InvestmentFlow_max(pv_electricity_bus_20)_:
-1 InvestmentFlow_invest(pv_electricity_bus)
+1 flow(pv_electricity_bus_20)
<= 0

c_u_InvestmentFlow_max(pv_electricity_bus_21)_:
-1 InvestmentFlow_invest(pv_electricity_bus)
+1 flow(pv_electricity_bus_21)
<= 0

c_u_InvestmentFlow_max(pv_electricity_bus_22)_:
-1 InvestmentFlow_invest(pv_electricity_bus)
+1 flow(pv_electricity_bus_22)
<= 0

c_u_InvestmentFlow_max(pv_electricity_bus_23)_:
-1 InvestmentFlow_invest(pv_electricity_bus)
+1 flow(pv_electricity_bus_23)
<= 0

c_u_InvestmentFlow_max(storage_electricity_bus_0)_:
-1 InvestmentFlow_invest(storage_electricity_bus)
+1 flow(storage_electricity_bus_0)
<= 0

c_u_InvestmentFlow_max(storage_electricity_bus_1)_:
-1 InvestmentFlow_invest(storage_electricity_bus)
+1 flow(storage_electricity_bus_1)
<= 0

c_u_InvestmentFlow_max(storage_electricity_bus_2)_:
-1 InvestmentFlow_invest(storage_electricity_bus)
+1 flow(storage_electricity_bus_2)
<= 0

c_u_InvestmentFlow_max(storage_electricity_bus_3)_:
-1 InvestmentFlow_invest(storage_electricity_bus)
+1 flow(storage_electricity_bus_3)
<= 0

c_u_InvestmentFlow_max(storage_electricity_bus_4)_:
-1 InvestmentFlow_invest(storage_electricity_bus)
+1 flow(storage_electricity_bus_4)
<= 0

c_u_InvestmentFlow_max(storage_electricity_bus_5)_:
-1 InvestmentFlow_invest(storage_electricity_bus)
+1 flow(storage_electricity_bus_5)
<= 0

c_u_InvestmentFlow_max(storage_electricity_bus_6)_:
-1 InvestmentFlow_invest(storage_electricity_bus)
+1 flow(storage_electricity_bus_6)
<= 0

c_u_InvestmentFlow_max(storage_electricity_bus_7)_:
-1 InvestmentFlow_invest(storage_electricity_bus)
+1 flow(storage_electricity_bus_7)
<= 0

c_u_InvestmentFlow_max(storage_electricity_bus_8)_:
-1 InvestmentFlow_invest(storage_electricity_bus)
+1 flow(storage_electricity_bus_8)
<= 0

c_u_InvestmentFlow_max(storage_electricity_bus_9)_:
-1 InvestmentFlow_invest(storage_electricity_bus)
+1 flow(storage_electricity_bus_9)
<= 0

c_u_InvestmentFlow_max(storage_electricity_bus_10)_:
-1 InvestmentFlow_invest(storage_electricity_bus)
+1 flow(storage_electricity_bus_10)
<= 0

c_u_InvestmentFlow_max(storage_electricity_bus_11)_:
-1 InvestmentFlow_invest(storage_electricity_bus)
+1 flow(storage_electricity_bus_11)
<= 0

c_u_InvestmentFlow_max(storage_electricity_bus_12)_:
-1 InvestmentFlow_invest(storage_electricity_bus)
+1 flow(storage_electricity_bus_12)
<= 0

c_u_InvestmentFlow_max(storage_electricity_bus_13)_:
-1 InvestmentFlow_invest(storage_electricity_bus)
+1 flow(storage_electricity_bus_13)
<= 0

c_u_InvestmentFlow_max(storage_electricity_bus_14)_:
-1 InvestmentFlow_invest(storage_electricity_bus)
+1 flow(storage_electricity_bus_14)
<= 0

c_u_InvestmentFlow_max(storage_electricity_bus_15)_:
-1 InvestmentFlow_invest(storage_electricity_bus)
+1 flow(storage_electricity_bus_15)
<= 0

c_u_InvestmentFlow_max(storage_electricity_bus_16)_:
-1 InvestmentFlow_invest(storage_electricity_bus)
+1 flow(storage_electricity_bus_16)
<= 0

c_u_InvestmentFlow_max(storage_electricity_bus_17)_:
-1 InvestmentFlow_invest(storage_electricity_bus)
+1 flow(storage_electricity_bus_17)
<= 0

c_u_InvestmentFlow_max(storage_electricity_bus_18)_:
-1 InvestmentFlow_invest(storage_electricity_bus)
+1 flow(storage_electricity_bus_18)
<= 0

c_u_InvestmentFlow_max(storage_electricity_bus_19)_:
-1 InvestmentFlow_invest(storage_electricity_bus)
+1 flow(storage_electricity_bus_19)
<= 0

c_u_InvestmentFlow_max(storage_electricity_bus_20)_:
-1 InvestmentFlow_invest(storage_electricity_bus)
+1 flow(storage_electricity_bus_20)
<= 0

c_u_InvestmentFlow_max(storage_electricity_bus_21)_:
-1 InvestmentFlow_invest(storage_electricity_bus)
+1 flow(storage_electricity_bus_21)
<= 0

c_u_InvestmentFlow_max(storage_electricity_bus_22)_:
-1 InvestmentFlow_invest(storage_electricity_bus)
+1 flow(storage_electricity_bus_22)
<= 0

c_u_InvestmentFlow_max(storage_electricity_bus_23)_:
-1 InvestmentFlow_invest(storage_electricity_bus)
+1 flow(storage_electricity_bus_23)
<= 0

c_u_InvestmentFlow_max(wind_electricity_bus_0)_:
-1 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_0)
<= 0

c_u_InvestmentFlow_max(wind_electricity_bus_1)_:
-1 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_1)
<= 0

c_u_InvestmentFlow_max(wind_electricity_bus_2)_:
-1 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_2)
<= 0

c_u_InvestmentFlow_max(wind_electricity_bus_3)_:
-1 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_3)
<= 0

c_u_InvestmentFlow_max(wind_electricity_bus_4)_:
-1 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_4)
<= 0

c_u_InvestmentFlow_max(wind_electricity_bus_5)_:
-1 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_5)
<= 0

c_u_InvestmentFlow_max(wind_electricity_bus_6)_:
-1 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_6)
<= 0

c_u_InvestmentFlow_max(wind_electricity_bus_7)_:
-1 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_7)
<= 0

c_u_InvestmentFlow_max(wind_electricity_bus_8)_:
-1 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_8)
<= 0

c_u_InvestmentFlow_max(wind_electricity_bus_9)_:
-1 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_9)
<= 0

c_u_InvestmentFlow_max(wind_electricity_bus_10)_:
-1 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_10)
<= 0

c_u_InvestmentFlow_max(wind_electricity_bus_11)_:
-1 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_11)
<= 0

c_u_InvestmentFlow_max(wind_electricity_bus_12)_:
-1 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_12)
<= 0

c_u_InvestmentFlow_max(wind_electricity_bus_13)_:
-1 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_13)
<= 0

c_u_InvestmentFlow_max(wind_electricity_bus_14)_:
-1 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_14)
<= 0

c_u_InvestmentFlow_max(wind_electricity_bus_15)_:
-1 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_15)
<= 0

c_u_InvestmentFlow_max(wind_electricity_bus_16)_:
-1 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_16)
<= 0

c_u_InvestmentFlow_max(wind_electricity_bus_17)_:
-1 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_17)
<= 0

c_u_InvestmentFlow_max(wind_electricity_bus_18)_:
-1 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_18)
<= 0

c_u_InvestmentFlow_max(wind_electricity_bus_19)_:
-1 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_19)
<= 0

c_u_InvestmentFlow_max(wind_electricity_bus_20)_:
-1 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_20)
<= 0

c_u_InvestmentFlow_max(wind_electricity_bus_21)_:
-1 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_21)
<= 0

c_u_InvestmentFlow_max(wind_electricity_bus_22)_:
-1 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_22)
<= 0

c_u_InvestmentFlow_max(wind_electricity_bus_23)_:
-1 InvestmentFlow_invest(wind_electricity_bus)
+1 flow(wind_electricity_bus_23)
<= 0

c_e_GenericInvestmentStorageBlock_init_cap_fix(storage)_:
+1 GenericInvestmentStorageBlock_init_cap(storage)
-0.5 GenericInvestmentStorageBlock_invest(storage)
= 0

c_e_GenericInvestmentStorageBlock_balance_first(storage)_:
+1 GenericInvestmentStorageBlock_capacity(storage_0)
-1 GenericInvestmentStorageBlock_init_cap(storage)
-0.94999999999999996 flow(electricity_bus_storage_0)
+1.0526315789473684 flow(storage_electricity_bus_0)
= 0

c_e_GenericInvestmentStorageBlock_balance(storage_1)_:
-1 GenericInvestmentStorageBlock_capacity(storage_0)
+1 GenericInvestmentStorageBlock_capacity(storage_1)
-0.94999999999999996 flow(electricity_bus_storage_1)
+1.0526315789473684 flow(storage_electricity_bus_1)
= 0

c_e_GenericInvestmentStorageBlock_balance(storage_2)_:
-1 GenericInvestmentStorageBlock_capacity(storage_1)
+1 GenericInvestmentStorageBlock_capacity(storage_2)
-0.94999999999999996 flow(electricity_bus_storage_2)
+1.0526315789473684 flow(storage_electricity_bus_2)
= 0

c_e_GenericInvestmentStorageBlock_balance(storage_3)_:
-1 GenericInvestmentStorageBlock_capacity(storage_2)
+1 GenericInvestmentStorageBlock_capacity(storage_3)
-0.94999999999999996 flow(electricity_bus_storage_3)
+1.0526315789473684 flow(storage_electricity_bus_3)
= 0

c_e_GenericInvestmentStorageBlock_balance(storage_4)_:
-1 GenericInvestmentStorageBlock_capacity(storage_3)
+1 GenericInvestmentStorageBlock_capacity(storage_4)
-0.94999999999999996 flow(electricity_bus_storage_4)
+1.0526315789473684 flow(storage_electricity_bus_4)
= 0

c_e_GenericInvestmentStorageBlock_balance(storage_5)_:
-1 GenericInvestmentStorageBlock_capacity(storage_4)
+1 GenericInvestmentStorageBlock_capacity(storage_5)
-0.94999999999999996 flow(electricity_bus_storage_5)
+1.0526315789473684 flow(storage_electricity_bus_5)
= 0

c_e_GenericInvestmentStorageBlock_balance(storage_6)_:
-1 GenericInvestmentStorageBlock_capacity(storage_5)
+1 GenericInvestmentStorageBlock_capacity(storage_6)
-0.94999999999999996 flow(electricity_bus_storage_6)
+1.0526315789473684 flow(storage_electricity_bus_6)
= 0

c_e_GenericInvestmentStorageBlock_balance(storage_7)_:
-1 GenericInvestmentStorageBlock_capacity(storage_6)
+1 GenericInvestmentStorageBlock_capacity(storage_7)
-0.94999999999999996 flow(electricity_bus_storage_7)
+1.0526315789473684 flow(storage_electricity_bus_7)
= 0

c_e_GenericInvestmentStorageBlock_balance(storage_8)_:
-1 GenericInvestmentStorageBlock_capacity(storage_7)
+1 GenericInvestmentStorageBlock_capacity(storage_8)
-0.94999999999999996 flow(electricity_bus_storage_8)
+1.0526315789473684 flow(storage_electricity_bus_8)
= 0

c_e_GenericInvestmentStorageBlock_balance(storage_9)_:
-1 GenericInvestmentStorageBlock_capacity(storage_8)
+1 GenericInvestmentStorageBlock_capacity(storage_9)
-0.94999999999999996 flow(electricity_bus_storage_9)
+1.0526315789473684 flow(storage_electricity_bus_9)
= 0

c_e_GenericInvestmentStorageBlock_balance(storage_10)_:
+1 GenericInvestmentStorageBlock_capacity(storage_10)
-1 GenericInvestmentStorageBlock_capacity(storage_9)
-0.94999999999999996 flow(electricity_bus_storage_10)
+1.0526315789473684 flow(storage_electricity_bus_10)
= 0

c_e_GenericInvestmentStorageBlock_balance(storage_11)_:
-1 GenericInvestmentStorageBlock_capacity(storage_10)
+1 GenericInvestmentStorageBlock_capacity(storage_11)
-0.94999999999999996 flow(electricity_bus_storage_11)
+1.0526315789473684 flow(storage_electricity_bus_11)
= 0

c_e_GenericInvestmentStorageBlock_balance(storage_12)_:
-1 GenericInvestmentStorageBlock_capacity(storage_11)
+1 GenericInvestmentStorageBlock_capacity(storage_12)
-0.94999999999999996 flow(electricity_bus_storage_12)
+1.0526315789473684 flow(storage_electricity_bus_12)
= 0

c_e_GenericInvestmentStorageBlock_balance(storage_13)_:
-1 GenericInvestmentStorageBlock_capacity(storage_12)
+1 GenericInvestmentStorageBlock_capacity(storage_13)
-0.94999999999999996 flow(electricity_bus_storage_13)
+1.0526315789473684 flow(storage_electricity_bus_13)
= 0

c_e_GenericInvestmentStorageBlock_balance(storage_14)_:
-1 GenericInvestmentStorageBlock_capacity(storage_13)
+1 GenericInvestmentStorageBlock_capacity(storage_14)
-0.94999999999999996 flow(electricity_bus_storage_14)
+1.0526315789473684 flow(storage_electricity_bus_14)
= 0

c_e_GenericInvestmentStorageBlock_balance(storage_15)_:
-1 GenericInvestmentStorageBlock_capacity(storage_14)
+1 GenericInvestmentStorageBlock_capacity(storage_15)
-0.94999999999999996 flow(electricity_bus_storage_15)
+1.0526315789473684 flow(storage_electricity_bus_15)
= 0

c_e_GenericInvestmentStorageBlock_balance(storage_16)_:
-1 GenericInvestmentStorageBlock_capacity(storage_15)
+1 GenericInvestmentStorageBlock_capacity(storage_16)
-0.94999999999999996 flow(electricity_bus_storage_16)
+1.0526315789473684 flow(storage_electricity_bus_16)
= 0

c_e_GenericInvestmentStorageBlock_balance(storage_17)_:
-1 GenericInvestmentStorageBlock_capacity(storage_16)
+1 GenericInvestmentStorageBlock_capacity(storage_17)
-0.94999999999999996 flow(electricity_bus_storage_17)
+1.0526315789473684 flow(storage_electricity_bus_17)
= 0

c_e_GenericInvestmentStorageBlock_balance(storage_18)_:
-1 GenericInvestmentStorageBlock_capacity(storage_17)
+1 GenericInvestmentStorageBlock_capacity(storage_18)
-0.94999999999999996 flow(electricity_bus_storage_18)
+1.0526315789473684 flow(storage_electricity_bus_18)
= 0

c_e_GenericInvestmentStorageBlock_balance(storage_19)_:
-1 GenericInvestmentStorageBlock_capacity(storage_18)
+1 GenericInvestmentStorageBlock_capacity(storage_19)
-0.94999999999999996 flow(electricity_bus_storage_19)
+1.0526315789473684 flow(storage_electricity_bus_19)
= 0

c_e_GenericInvestmentStorageBlock_balance(storage_20)_:
-1 GenericInvestmentStorageBlock_capacity(storage_19)
+1 GenericInvestmentStorageBlock_capacity(storage_20)
-0.94999999999999996 flow(electricity_bus_storage_20)
+1.0526315789473684 flow(storage_electricity_bus_20)
= 0

c_e_GenericInvestmentStorageBlock_balance(storage_21)_:
-1 GenericInvestmentStorageBlock_capacity(storage_20)
+1 GenericInvestmentStorageBlock_capacity(storage_21)
-0.94999999999999996 flow(electricity_bus_storage_21)
+1.0526315789473684 flow(storage_electricity_bus_21)
= 0

c_e_GenericInvestmentStorageBlock_balance(storage_22)_:
-1 GenericInvestmentStorageBlock_capacity(storage_21)
+1 GenericInvestmentStorageBlock_capacity(storage_22)
-0.94999999999999996 flow(electricity_bus_storage_22)
+1.0526315789473684 flow(storage_electricity_bus_22)
= 0

c_e_GenericInvestmentStorageBlock_balance(storage_23)_:
-1 GenericInvestmentStorageBlock_capacity(storage_22)
+1 GenericInvestmentStorageBlock_capacity(storage_23)
-0.94999999999999996 flow(electricity_bus_storage_23)
+1.0526315789473684 flow(storage_electricity_bus_23)
= 0

c_e_GenericInvestmentStorageBlock_balanced_cstr(storage)_:
+1 GenericInvestmentStorageBlock_capacity(storage_23)
-1 GenericInvestmentStorageBlock_init_cap(storage)
= 0

c_e_GenericInvestmentStorageBlock_storage_capacity_inflow(storage)_:
-0.20000000000000001 GenericInvestmentStorageBlock_invest(storage)
+1 InvestmentFlow_invest(electricity_bus_storage)
= 0

c_e_GenericInvestmentStorageBlock_storage_capacity_outflow(storage)_:
-1 GenericInvestmentStorageBlock_invest(storage)
+1 InvestmentFlow_invest(storage_electricity_bus)
= 0

c_u_GenericInvestmentStorageBlock_max_capacity(storage_0)_:
+1 GenericInvestmentStorageBlock_capacity(storage_0)
-1 GenericInvestmentStorageBlock_invest(storage)
<= 0

c_u_GenericInvestmentStorageBlock_max_capacity(storage_1)_:
+1 GenericInvestmentStorageBlock_capacity(storage_1)
-1 GenericInvestmentStorageBlock_invest(storage)
<= 0

c_u_GenericInvestmentStorageBlock_max_capacity(storage_2)_:
+1 GenericInvestmentStorageBlock_capacity(storage_2)
-1 GenericInvestmentStorageBlock_invest(storage)
<= 0

c_u_GenericInvestmentStorageBlock_max_capacity(storage_3)_:
+1 GenericInvestmentStorageBlock_capacity(storage_3)
-1 GenericInvestmentStorageBlock_invest(storage)
<= 0

c_u_GenericInvestmentStorageBlock_max_capacity(storage_4)_:
+1 GenericInvestmentStorageBlock_capacity(storage_4)
-1 GenericInvestmentStorageBlock_invest(storage)
<= 0

c_u_GenericInvestmentStorageBlock_max_capacity(storage_5)_:
+1 GenericInvestmentStorageBlock_capacity(storage_5)
-1 GenericInvestmentStorageBlock_invest(storage)
<= 0

c_u_GenericInvestmentStorageBlock_max_capacity(storage_6)_:
+1 GenericInvestmentStorageBlock_capacity(storage_6)
-1 GenericInvestmentStorageBlock_invest(storage)
<= 0

c_u_GenericInvestmentStorageBlock_max_capacity(storage_7)_:
+1 GenericInvestmentStorageBlock_capacity(storage_7)
-1 GenericInvestmentStorageBlock_invest(storage)
<= 0

c_u_GenericInvestmentStorageBlock_max_capacity(storage_8)_:
+1 GenericInvestmentStorageBlock_capacity(storage_8)
-1 GenericInvestmentStorageBlock_invest(storage)
<= 0

c_u_GenericInvestmentStorageBlock_max_capacity(storage_9)_:
+1 GenericInvestmentStorageBlock_capacity(storage_9)
-1 GenericInvestmentStorageBlock_invest(storage)
<= 0

c_u_GenericInvestmentStorageBlock_max_capacity(storage_10)_:
+1 GenericInvestmentStorageBlock_capacity(storage_10)
-1 GenericInvestmentStorageBlock_invest(storage)
<= 0

c_u_GenericInvestmentStorageBlock_max_capacity(storage_11)_:
+1 GenericInvestmentStorageBlock_capacity(storage_11)
-1 GenericInvestmentStorageBlock_invest(storage)
<= 0

c_u_GenericInvestmentStorageBlock_max_capacity(storage_12)_:
+1 GenericInvestmentStorageBlock_capacity(storage_12)
-1 GenericInvestmentStorageBlock_invest(storage)
<= 0

c_u_GenericInvestmentStorageBlock_max_capacity(storage_13)_:
+1 GenericInvestmentStorageBlock_capacity(storage_13)
-1 GenericInvestmentStorageBlock_invest(storage)
<= 0

c_u_GenericInvestmentStorageBlock_max_capacity(storage_14)_:
+1 GenericInvestmentStorageBlock_capacity(storage_14)
-1 GenericInvestmentStorageBlock_invest(storage)
<= 0

c_u_GenericInvestmentStorageBlock_max_capacity(storage_15)_:
+1 GenericInvestmentStorageBlock_capacity(storage_15)
-1 GenericInvestmentStorageBlock_invest(storage)
<= 0

c_u_GenericInvestmentStorageBlock_max_capacity(storage_16)_:
+1 GenericInvestmentStorageBlock_capacity(storage_16)
-1 GenericInvestmentStorageBlock_invest(storage)
<= 0

c_u_GenericInvestmentStorageBlock_max_capacity(storage_17)_:
+1 GenericInvestmentStorageBlock_capacity(storage_17)
-1 GenericInvestmentStorageBlock_invest(storage)
<= 0

c_u_GenericInvestmentStorageBlock_max_capacity(storage_18)_:
+1 GenericInvestmentStorageBlock_capacity(storage_18)
-1 GenericInvestmentStorageBlock_invest(storage)
<= 0

c_u_GenericInvestmentStorageBlock_max_capacity(storage_19)_:
+1 GenericInvestmentStorageBlock_capacity(storage_19)
-1 GenericInvestmentStorageBlock_invest(storage)
<= 0

c_u_GenericInvestmentStorageBlock_max_capacity(storage_20)_:
+1 GenericInvestmentStorageBlock_capacity(storage_20)
-1 GenericInvestmentStorageBlock_invest(storage)
<= 0

c_u_GenericInvestmentStorageBlock_max_capacity(storage_21)_:
+1 GenericInvestmentStorageBlock_capacity(storage_21)
-1 GenericInvestmentStorageBlock_invest(storage)
<= 0

c_u_GenericInvestmentStorageBlock_max_capacity(storage_22)_:
+1 GenericInvestmentStorageBlock_capacity(storage_22)
-1 GenericInvestmentStorageBlock_invest(storage)
<= 0

c_u_GenericInvestmentStorageBlock_max_capacity(storage_23)_:
+1 GenericInvestmentStorageBlock_capacity(storage_23)
-1 GenericInvestmentStorageBlock_invest(storage)
<= 0

c_e_ONE_VAR_CONSTANT: 
ONE_VAR_CONSTANT = 1.0

bounds
   0 <= flow(diesel_fuel_bus_0) <= +inf
   0 <= flow(diesel_fuel_bus_1) <= +inf
   0 <= flow(diesel_fuel_bus_2) <= +inf
   0 <= flow(diesel_fuel_bus_3) <= +inf
   0 <= flow(diesel_fuel_bus_4) <= +inf
   0 <= flow(diesel_fuel_bus_5) <= +inf
   0 <= flow(diesel_fuel_bus_6) <= +inf
   0 <= flow(diesel_fuel_bus_7) <= +inf
   0 <= flow(diesel_fuel_bus_8) <= +inf
   0 <= flow(diesel_fuel_bus_9) <= +inf
   0 <= flow(diesel_fuel_bus_10) <= +inf
   0 <= flow(diesel_fuel_bus_11) <= +inf
   0 <= flow(diesel_fuel_bus_12) <= +inf
   0 <= flow(diesel_fuel_bus_13) <= +inf
   0 <= flow(diesel_fuel_bus_14) <= +inf
   0 <= flow(diesel_fuel_bus_15) <= +inf
   0 <= flow(diesel_fuel_bus_16) <= +inf
   0 <= flow(diesel_fuel_bus_17) <= +inf
   0 <= flow(diesel_fuel_bus_18) <= +inf
   0 <= flow(diesel_fuel_bus_19) <= +inf
   0 <= flow(diesel_fuel_bus_20) <= +inf
   0 <= flow(diesel_fuel_bus_21) <= +inf
   0 <= flow(diesel_fuel_bus_22) <= +inf
   0 <= flow(diesel_fuel_bus_23) <= +inf
   0 <= flow(electricity_bus_excess_0) <= +inf
   0 <= flow(electricity_bus_excess_1) <= +inf
   0 <= flow(electricity_bus_excess_2) <= +inf
   0 <= flow(electricity_bus_excess_3) <= +inf
   0 <= flow(electricity_bus_excess_4) <= +inf
   0 <= flow(electricity_bus_excess_5) <= +inf
   0 <= flow(electricity_bus_excess_6) <= +inf
   0 <= flow(electricity_bus_excess_7) <= +inf
   0 <= flow(electricity_bus_excess_8) <= +inf
   0 <= flow(electricity_bus_excess_9) <= +inf
   0 <= flow(electricity_bus_excess_10) <= +inf
   0 <= flow(electricity_bus_excess_11) <= +inf
   0 <= flow(electricity_bus_excess_12) <= +inf
   0 <= flow(electricity_bus_excess_13) <= +inf
   0 <= flow(electricity_bus_excess_14) <= +inf
   0 <= flow(electricity_bus_excess_15) <= +inf
   0 <= flow(electricity_bus_excess_16) <= +inf
   0 <= flow(electricity_bus_excess_17) <= +inf
   0 <= flow(electricity_bus_excess_18) <= +inf
   0 <= flow(electricity_bus_excess_19) <= +inf
   0 <= flow(electricity_bus_excess_20) <= +inf
   0 <= flow(electricity_bus_excess_21) <= +inf
   0 <= flow(electricity_bus_excess_22) <= +inf
   0 <= flow(electricity_bus_excess_23) <= +inf
   0 <= flow(electricity_bus_storage_0) <= +inf
   0 <= flow(electricity_bus_storage_1) <= +inf
   0 <= flow(electricity_bus_storage_2) <= +inf
   0 <= flow(electricity_bus_storage_3) <= +inf
   0 <= flow(electricity_bus_storage_4) <= +inf
   0 <= flow(electricity_bus_storage_5) <= +inf
   0 <= flow(electricity_bus_storage_6) <= +inf
   0 <= flow(electricity_bus_storage_7) <= +inf
   0 <= flow(electricity_bus_storage_8) <= +inf
   0 <= flow(electricity_bus_storage_9) <= +inf
   0 <= flow(electricity_bus_storage_10) <= +inf
   0 <= flow(electricity_bus_storage_11) <= +inf
   0 <= flow(electricity_bus_storage_12) <= +inf
   0 <= flow(electricity_bus_storage_13) <= +inf
   0 <= flow(electricity_bus_storage_14) <= +inf
   0 <= flow(electricity_bus_storage_15) <= +inf
   0 <= flow(electricity_bus_storage_16) <= +inf
   0 <= flow(electricity_bus_storage_17) <= +inf
   0 <= flow(electricity_bus_storage_18) <= +inf
   0 <= flow(electricity_bus_storage_19) <= +inf
   0 <= flow(electricity_bus_storage_20) <= +inf
   0 <= flow(electricity_bus_storage_21) <= +inf
   0 <= flow(electricity_bus_storage_22) <= +inf
   0 <= flow(electricity_bus_storage_23) <= +inf
   0 <= flow(fuel_bus_genset_0) <= +inf
   0 <= flow(fuel_bus_genset_1) <= +inf
   0 <= flow(fuel_bus_genset_2) <= +inf
   0 <= flow(fuel_bus_genset_3) <= +inf
   0 <= flow(fuel_bus_genset_4) <= +inf
   0 <= flow(fuel_bus_genset_5) <= +inf
   0 <= flow(fuel_bus_genset_6) <= +inf
   0 <= flow(fuel_bus_genset_7) <= +inf
   0 <= flow(fuel_bus_genset_8) <= +inf
   0 <= flow(fuel_bus_genset_9) <= +inf
   0 <= flow(fuel_bus_genset_10) <= +inf
   0 <= flow(fuel_bus_genset_11) <= +inf
   0 <= flow(fuel_bus_genset_12) <= +inf
   0 <= flow(fuel_bus_genset_13) <= +inf
   0 <= flow(fuel_bus_genset_14) <= +inf
   0 <= flow(fuel_bus_genset_15) <= +inf
   0 <= flow(fuel_bus_genset_16) <= +inf
   0 <= flow(fuel_bus_genset_17) <= +inf
   0 <= flow(fuel_bus_genset_18) <= +inf
   0 <= flow(fuel_bus_genset_19) <= +inf
   0 <= flow(fuel_bus_genset_20) <= +inf
   0 <= flow(fuel_bus_genset_21) <= +inf
   0 <= flow(fuel_bus_genset_22) <= +inf
   0 <= flow(fuel_bus_genset_23) <= +inf
   0 <= flow(genset_electricity_bus_0) <= +inf
   0 <= flow(genset_electricity_bus_1) <= +inf
   0 <= flow(genset_electricity_bus_2) <= +inf
   0 <= flow(genset_electricity_bus_3) <= +inf
   0 <= flow(genset_electricity_bus_4) <= +inf
   0 <= flow(genset_electricity_bus_5) <= +inf
   0 <= flow(genset_electricity_bus_6) <= +inf
   0 <= flow(genset_electricity_bus_7) <= +inf
   0 <= flow(genset_electricity_bus_8) <= +inf
   0 <= flow(genset_electricity_bus_9) <= +inf
   0 <= flow(genset_electricity_bus_10) <= +inf
   0 <= flow(genset_electricity_bus_11) <= +inf
   0 <= flow(genset_electricity_bus_12) <= +inf
   0 <= flow(genset_electricity_bus_13) <= +inf
   0 <= flow(genset_electricity_bus_14) <= +inf
   0 <= flow(genset_electricity_bus_15) <= +inf
   0 <= flow(genset_electricity_bus_16) <= +inf
   0 <= flow(genset_electricity_bus_17) <= +inf
   0 <= flow(genset_electricity_bus_18) <= +inf
   0 <= flow(genset_electricity_bus_19) <= +inf
   0 <= flow(genset_electricity_bus_20) <= +inf
   0 <= flow(genset_electricity_bus_21) <= +inf
   0 <= flow(genset_electricity_bus_22) <= +inf
   0 <= flow(genset_electricity_bus_23) <= +inf
   0 <= flow(pv_electricity_bus_0) <= +inf
   0 <= flow(pv_electricity_bus_1) <= +inf
   0 <= flow(pv_electricity_bus_2) <= +inf
   0 <= flow(pv_electricity_bus_3) <= +inf
   0 <= flow(pv_electricity_bus_4) <= +inf
   0 <= flow(pv_electricity_bus_5) <= +inf
   0 <= flow(pv_electricity_bus_6) <= +inf
   0 <= flow(pv_electricity_bus_7) <= +inf
   0 <= flow(pv_electricity_bus_8) <= +inf
   0 <= flow(pv_electricity_bus_9) <= +inf
   0 <= flow(pv_electricity_bus_10) <= +inf
   0 <= flow(pv_electricity_bus_11) <= +inf
   0 <= flow(pv_electricity_bus_12) <= +inf
   0 <= flow(pv_electricity_bus_13) <= +inf
   0 <= flow(pv_electricity_bus_14) <= +inf
   0 <= flow(pv_electricity_bus_15) <= +inf
   0 <= flow(pv_electricity_bus_16) <= +inf
   0 <= flow(pv_electricity_bus_17) <= +inf
   0 <= flow(pv_electricity_bus_18) <= +inf
   0 <= flow(pv_electricity_bus_19) <= +inf
   0 <= flow(pv_electricity_bus_20) <= +inf
   0 <= flow(pv_electricity_bus_21) <= +inf
   0 <= flow(pv_electricity_bus_22) <= +inf
   0 <= flow(pv_electricity_bus_23) <= +inf
   0 <= flow(storage_electricity_bus_0) <= +inf
   0 <= flow(storage_electricity_bus_1) <= +inf
   0 <= flow(storage_electricity_bus_2) <= +inf
   0 <= flow(storage_electricity_bus_3) <= +inf
   0 <= flow(storage_electricity_bus_4) <= +inf
   0 <= flow(storage_electricity_bus_5) <= +inf
   0 <= flow(storage_electricity_bus_6) <= +inf
   0 <= flow(storage_electricity_bus_7) <= +inf
   0 <= flow(storage_electricity_bus_8) <= +inf
   0 <= flow(storage_electricity_bus_9) <= +inf
   0 <= flow(storage_electricity_bus_10) <= +inf
   0 <= flow(storage_electricity_bus_11) <= +inf
   0 <= flow(storage_electricity_bus_12) <= +inf
   0 <= flow(storage_electricity_bus_13) <= +inf
   0 <= flow(storage_electricity_bus_14) <= +inf
   0 <= flow(storage_electricity_bus_15) <= +inf
   0 <= flow(storage_electricity_bus_16) <= +inf
   0 <= flow(storage_electricity_bus_17) <= +inf
   0 <= flow(storage_electricity_bus_18) <= +inf
   0 <= flow(storage_electricity_bus_19) <= +inf
   0 <= flow(storage_electricity_bus_20) <= +inf
   0 <= flow(storage_electricity_bus_21) <= +inf
   0 <= flow(storage_electricity_bus_22) <= +inf
   0 <= flow(storage_electricity_bus_23) <= +inf
   0 <= flow(wind_electricity_bus_0) <= +inf
   0 <= flow(wind_electricity_bus_1) <= +inf
   0 <= flow(wind_electricity_bus_2) <= +inf
   0 <= flow(wind_electricity_bus_3) <= +inf
   0 <= flow(wind_electricity_bus_4) <= +inf
   0 <= flow(wind_electricity_bus_5) <= +inf
   0 <= flow(wind_electricity_bus_6) <= +inf
   0 <= flow(wind_electricity_bus_7) <= +inf
   0 <= flow(wind_electricity_bus_8) <= +inf
   0 <= flow(wind_electricity_bus_9) <= +inf
   0 <= flow(wind_electricity_bus_10) <= +inf
   0 <= flow(wind_electricity_bus_11) <= +inf
   0 <= flow(wind_electricity_bus_12) <= +inf
   0 <= flow(wind_electricity_bus_13) <= +inf
   0 <= flow(wind_electricity_bus_14) <= +inf
   0 <= flow(wind_electricity_bus_15) <= +inf
   0 <= flow(wind_electricity_bus_16) <= +inf
   0 <= flow(wind_electricity_bus_17) <= +inf
   0 <= flow(wind_electricity_bus_18) <= +inf
   0 <= flow(wind_electricity_bus_19) <= +inf
   0 <= flow(wind_electricity_bus_20) <= +inf
   0 <= flow(wind_electricity_bus_21) <= +inf
   0 <= flow(wind_electricity_bus_22) <= +inf
   0 <= flow(wind_electricity_bus_23) <= +inf
   0 <= InvestmentFlow_invest(electricity_bus_storage) <= +inf
   0 <= InvestmentFlow_invest(genset_electricity_bus) <= +inf
   0 <= InvestmentFlow_invest(pv_electricity_bus) <= +inf
   0 <= InvestmentFlow_invest(storage_electricity_bus) <= +inf
   0 <= InvestmentFlow_invest(wind_electricity_bus) <= +inf
   0 <= GenericInvestmentStorageBlock_capacity(storage_0) <= +inf
   0 <= GenericInvestmentStorageBlock_capacity(storage_1) <= +inf
   0 <= GenericInvestmentStorageBlock_capacity(storage_2) <= +inf
   0 <= GenericInvestmentStorageBlock_capacity(storage_3) <= +inf
   0 <= GenericInvestmentStorageBlock_capacity(storage_4) <= +inf
   0 <= GenericInvestmentStorageBlock_capacity(storage_5) <= +inf
   0 <= GenericInvestmentStorageBlock_capacity(storage_6) <= +inf
   0 <= GenericInvestmentStorageBlock_capacity(storage_7) <= +inf
   0 <= GenericInvestmentStorageBlock_capacity(storage_8) <= +inf
   0 <= GenericInvestmentStorageBlock_capacity(storage_9) <= +inf
   0 <= GenericInvestmentStorageBlock_capacity(storage_10) <= +inf
   0 <= GenericInvestmentStorageBlock_capacity(storage_11) <= +inf
   0 <= GenericInvestmentStorageBlock_capacity(storage_12) <= +inf
   0 <= GenericInvestmentStorageBlock_capacity(storage_13) <= +inf
   0 <= GenericInvestmentStorageBlock_capacity(storage_14) <= +inf
   0 <= GenericInvestmentStorageBlock_capacity(storage_15) <= +inf
   0 <= GenericInvestmentStorageBlock_capacity(storage_16) <= +inf
   0 <= GenericInvestmentStorageBlock_capacity(storage_17) <= +inf
   0 <= GenericInvestmentStorageBlock_capacity(storage_18) <= +inf
   0 <= GenericInvestmentStorageBlock_capacity(storage_19) <= +inf
   0 <= GenericInvestmentStorageBlock_capacity(storage_20) <= +inf
   0 <= GenericInvestmentStorageBlock_capacity(storage_21) <= +inf
   0 <= GenericInvestmentStorageBlock_capacity(storage_22) <= +inf
   0 <= GenericInvestmentStorageBlock_capacity(storage_23) <= +inf
   0 <= GenericInvestmentStorageBlock_invest(storage) <= +inf
   0 <= GenericInvestmentStorageBlock_init_cap(storage) <= +inf
end
