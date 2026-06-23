"""Fetch wind turbine data from Marktstammdatenregister and write slim JSON."""

import json
import requests
import pandas as pd

OUTPUT_FILE_JSON = snakemake.output.json
OUTPUT_FILE_CSV = snakemake.output.csv

WIND_TURBINE_CODE = 2497

URL = "https://www.marktstammdatenregister.de/MaStR/Einheit/EinheitJson/GetErweiterteOeffentlicheEinheitStromerzeugung"
PARAMS = {
    "filter": f"Energieträger~eq~{WIND_TURBINE_CODE}",
    "pageSize": 25000,
}
FIELDS = ("Id", "Nettonennleistung", "Laengengrad", "Breitengrad")


def extract() -> list[dict]:
    """Fetch wind turbine records from MaStR API.

    Returns:
        List of dicts.

    Raises:
        requests.HTTPError: If the request fails.
    """
    turbines = []
    page = 1
    while True:
        print(f"Fetching page {page}...")
        PARAMS["page"] = page
        response = requests.get(URL, params=PARAMS, timeout=60)
        response.raise_for_status()
        data = response.json()
        if len(data["Data"]) == 0:
            break
        turbines.extend(data["Data"])
        page += 1
    return turbines


def transform(turbines: list[dict]) -> dict:
    """Filter columns and transform wind turbine records into a GeoJSON FeatureCollection.

    Args:
        turbines: Raw records from MaStR API.

    Returns:
        GeoJSON FeatureCollection with one Feature per turbine.
    """
    non_geo_fields = tuple(f for f in FIELDS if f not in ("Laengengrad", "Breitengrad"))
    features = []
    for entry in turbines:
        lon = entry.get("Laengengrad")
        lat = entry.get("Breitengrad")
        features.append({
            "type": "Feature",
            "geometry": {"type": "Point", "coordinates": [lon, lat]},
            "properties": {field: entry.get(field) for field in non_geo_fields},
        })
    return {"type": "FeatureCollection", "features": features}


def load(geojson: dict) -> None:
    """Write GeoJSON FeatureCollection to files: geojson and csv

    Args:
        geojson: GeoJSON FeatureCollection dict.
    """
    with open(OUTPUT_FILE_JSON, "w") as f:
        json.dump(geojson, f, indent=2)
    pd.DataFrame(
        [f["properties"] for f in geojson["features"]]
    )[["Nettonennleistung"]].to_csv(OUTPUT_FILE_CSV, index=False)


if __name__ == "__main__":
    turbines_raw = extract()
    turbines = transform(turbines_raw)
    load(turbines)
