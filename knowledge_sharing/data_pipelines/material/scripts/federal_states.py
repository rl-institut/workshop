"""Download VG250 Bundesländer boundaries as GeoJSON from BKG Geodatenzentrum WFS."""

import json
from pathlib import Path

import requests

ROOT_DIR = Path(__file__).parent.parent
OUTPUT_FILE = ROOT_DIR / "data" / "federal_states.geojson"

WFS_URL = "https://sgx.geodatenzentrum.de/wfs_vg250"
PARAMS = {
    "SERVICE": "WFS",
    "VERSION": "2.0.0",
    "REQUEST": "GetFeature",
    "TYPENAMES": "vg250:vg250_lan",
    "OUTPUTFORMAT": "application/json",
}


def extract() -> dict:
    """Fetch German federal state boundaries from BKG WFS as GeoJSON.

    Returns:
        GeoJSON FeatureCollection dict.

    Raises:
        requests.HTTPError: If the WFS request fails.
    """
    response = requests.get(WFS_URL, params=PARAMS, timeout=60)
    response.raise_for_status()
    data = response.json()
    return data


def transform(data: dict) -> dict:
    """Filter out duplicate features and return the transformed data."""
    seen: set[str] = set()
    unique_features = []
    for feature in data["features"]:
        name = feature["properties"]["gen"]
        if "Bodensee" in name:
            continue
        if name not in seen:
            seen.add(name)
            unique_features.append(feature)
    data["features"] = unique_features
    return data


def load(geojson: dict) -> None:
    """Write GeoJSON FeatureCollection to file."""
    with open(OUTPUT_FILE, "w", encoding="utf-8") as f:
        json.dump(geojson, f, ensure_ascii=False, indent=2)
    print(f"Wrote {len(geojson['features'])} features to {OUTPUT_FILE}")


if __name__ == "__main__":
    geojson = extract()
    geojson = transform(geojson)
    load(geojson)