import pandas as pd
import numpy as np

# you need to install this package with: pip install pycountry
import pycountry as pc

# Source: https://data.jrc.ec.europa.eu/dataset/18eb348b-1420-46b6-978a-fe0b79e30ad3
# You need to download this file as only the parsed one is saved in the repository
xls = pd.ExcelFile("ENSPRESO_SOLAR_PV_CSP.XLSX", engine="openpyxl")


def find_country_iso(country):
    try:
        answer = pc.countries.search_fuzzy(country)[0].alpha_3
    except LookupError:
        answer = "none"
    return answer


# Convert to csv files
MS = [85, 170, 300]
percent = [3, 100]

bdf = pd.DataFrame()


for ms in MS:
    for p in percent:
        fname = f"MS {ms} W per m2 and {p}%"
        # Read the xlsx file's sheetname and skip the first table to get the units in TWh
        df = xls.parse(sheet_name=fname, header=4, skiprows=22)
        # Rename country which had still a german name
        df = df.rename(columns={"Hungaria": "Hungary", "Luxemburg": "Luxembourg"})
        # Drop colums which are not useful for our purpose
        df.drop(["Unnamed: 0", "Technology"], axis=1, inplace=True)
        # Transpose the table to make it tidy data
        df = df.set_index("Surface").T
        # Map the country name to the iso names
        df["__country_iso"] = df.index.map(find_country_iso)
        # Add the ms value in a column to pack all info in one single file
        df["__MS"] = ms
        # Add the percentage of area value in a column to pack all info in one single file
        df["__percent_area"] = p
        df = df.reset_index()
        if bdf.empty is True:
            bdf = df.copy()
        else:
            bdf = bdf.append(df, ignore_index=True)
        df.to_csv(f"{fname}.csv", index=False)

bdf = bdf.rename(columns={"index": "__country"})
bdf.drop(np.nan, axis=1, inplace=True)
bdf.to_csv("enspreso_solar_pv_csp.csv", index=False)
