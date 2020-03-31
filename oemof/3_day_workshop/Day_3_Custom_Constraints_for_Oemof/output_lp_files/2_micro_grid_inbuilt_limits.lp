\* Source Pyomo model name=Model *\

min 
objective:
+0.03955047913155272 GenericInvestmentStorageBlock_invest(storage)
+0.022175440918742569 InvestmentFlow_invest(genset_electricity_bus)
+0.034350422598754829 InvestmentFlow_invest(pv_electricity_bus)
+0.091601126930012891 InvestmentFlow_invest(wind_electricity_bus)
+0.063761955366631234 flow(diesel_fuel_bus_0)
+0.063761955366631234 flow(diesel_fuel_bus_1)
+0.063761955366631234 flow(diesel_fuel_bus_2)
+0.063761955366631234 flow(diesel_fuel_bus_3)
+0.063761955366631234 flow(diesel_fuel_bus_4)

s.t.

c_u_emission_limit_:
+0.59999999999999998 flow(genset_electricity_bus_0)
+0.59999999999999998 flow(genset_electricity_bus_1)
+0.59999999999999998 flow(genset_electricity_bus_2)
+0.59999999999999998 flow(genset_electricity_bus_3)
+0.59999999999999998 flow(genset_electricity_bus_4)
<= 1.5

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

c_e_GenericInvestmentStorageBlock_balanced_cstr(storage)_:
+1 GenericInvestmentStorageBlock_capacity(storage_4)
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

c_e_ONE_VAR_CONSTANT: 
ONE_VAR_CONSTANT = 1.0

bounds
   0 <= flow(diesel_fuel_bus_0) <= +inf
   0 <= flow(diesel_fuel_bus_1) <= +inf
   0 <= flow(diesel_fuel_bus_2) <= +inf
   0 <= flow(diesel_fuel_bus_3) <= +inf
   0 <= flow(diesel_fuel_bus_4) <= +inf
   0 <= flow(electricity_bus_excess_0) <= +inf
   0 <= flow(electricity_bus_excess_1) <= +inf
   0 <= flow(electricity_bus_excess_2) <= +inf
   0 <= flow(electricity_bus_excess_3) <= +inf
   0 <= flow(electricity_bus_excess_4) <= +inf
   0 <= flow(electricity_bus_storage_0) <= +inf
   0 <= flow(electricity_bus_storage_1) <= +inf
   0 <= flow(electricity_bus_storage_2) <= +inf
   0 <= flow(electricity_bus_storage_3) <= +inf
   0 <= flow(electricity_bus_storage_4) <= +inf
   0 <= flow(fuel_bus_genset_0) <= +inf
   0 <= flow(fuel_bus_genset_1) <= +inf
   0 <= flow(fuel_bus_genset_2) <= +inf
   0 <= flow(fuel_bus_genset_3) <= +inf
   0 <= flow(fuel_bus_genset_4) <= +inf
   0 <= flow(genset_electricity_bus_0) <= +inf
   0 <= flow(genset_electricity_bus_1) <= +inf
   0 <= flow(genset_electricity_bus_2) <= +inf
   0 <= flow(genset_electricity_bus_3) <= +inf
   0 <= flow(genset_electricity_bus_4) <= +inf
   0 <= flow(pv_electricity_bus_0) <= +inf
   0 <= flow(pv_electricity_bus_1) <= +inf
   0 <= flow(pv_electricity_bus_2) <= +inf
   0 <= flow(pv_electricity_bus_3) <= +inf
   0 <= flow(pv_electricity_bus_4) <= +inf
   0 <= flow(storage_electricity_bus_0) <= +inf
   0 <= flow(storage_electricity_bus_1) <= +inf
   0 <= flow(storage_electricity_bus_2) <= +inf
   0 <= flow(storage_electricity_bus_3) <= +inf
   0 <= flow(storage_electricity_bus_4) <= +inf
   0 <= flow(wind_electricity_bus_0) <= +inf
   0 <= flow(wind_electricity_bus_1) <= +inf
   0 <= flow(wind_electricity_bus_2) <= +inf
   0 <= flow(wind_electricity_bus_3) <= +inf
   0 <= flow(wind_electricity_bus_4) <= +inf
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
   0 <= GenericInvestmentStorageBlock_invest(storage) <= +inf
   0 <= GenericInvestmentStorageBlock_init_cap(storage) <= +inf
end
