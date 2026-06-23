"""Clip turbine locations to federal states and sum installed capacity."""

from pathlib import Path

import geopandas as gpd

WIND_TURBINES_FILE = snakemake.input.turbines
FEDERAL_STATES_FILE = snakemake.input.states
OUTPUT_FILE = snakemake.output[0]


def extract() -> tuple[gpd.GeoDataFrame, gpd.GeoDataFrame]:
    """Load wind turbines and federal states from GeoJSON files.

    Returns:
        Tuple of (turbines GeoDataFrame, states GeoDataFrame).
    """
    turbines = gpd.read_file(WIND_TURBINES_FILE)
    states = gpd.read_file(FEDERAL_STATES_FILE)
    return turbines, states


def transform(
    turbines: gpd.GeoDataFrame, states: gpd.GeoDataFrame
) -> gpd.GeoDataFrame:
    """Spatial join turbines to states and sum installed capacity per state.

    Args:
        turbines: GeoDataFrame with Point geometry and Nettonennleistung property.
        states: GeoDataFrame with MultiPolygon geometry and gen property.

    Returns:
        GeoDataFrame with one row per state and total_capacity_kw column.
    """
    states = states.to_crs(turbines.crs)
    joined = gpd.sjoin(turbines, states[["gen", "geometry"]], how="inner", predicate="within")
    capacity = joined.groupby("gen")["Nettonennleistung"].sum().reset_index()
    capacity.columns = ["gen", "total_capacity_kw"]

    result = states.merge(capacity, on="gen", how="left")
    result["total_capacity_kw"] = result["total_capacity_kw"].fillna(0)
    return result[["gen", "total_capacity_kw", "geometry"]]


def load(gdf: gpd.GeoDataFrame) -> None:
    """Write capacity-by-state GeoDataFrame to GeoJSON.

    Args:
        gdf: GeoDataFrame with state geometries and total_capacity_kw.
    """
    gdf.to_file(OUTPUT_FILE, driver="GeoJSON")
    print(f"Wrote {len(gdf)} states to {OUTPUT_FILE}")


if __name__ == "__main__":
    turbines, states = extract()
    result = transform(turbines, states)
    # print(f"Total capacity DE: {round(result.total_capacity_kw.sum()/1e6, 1)} GW")
    load(result)