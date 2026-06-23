"""Create an HTML map and bar chart of wind capacity per federal state."""

from pathlib import Path

import folium
import geopandas as gpd

ROOT_DIR = Path(__file__).parent.parent
INPUT_FILE = ROOT_DIR / "data" / "wind_capacity_by_state.geojson"
OUTPUT_DIR = ROOT_DIR / "output"
OUTPUT_FILE = OUTPUT_DIR / "wind_capacity_map.html"


def extract() -> gpd.GeoDataFrame:
    """Load wind capacity by state from GeoJSON.

    Returns:
        GeoDataFrame with gen, total_capacity_kw, geometry columns.
    """
    return gpd.read_file(INPUT_FILE)


def transform(gdf: gpd.GeoDataFrame) -> gpd.GeoDataFrame:
    """Reproject to WGS84 and add capacity in GW column for display.

    Args:
        gdf: GeoDataFrame with total_capacity_kw column.

    Returns:
        GeoDataFrame in EPSG:4326 with additional total_capacity_gw column.
    """
    gdf = gdf.to_crs("EPSG:4326")
    gdf["total_capacity_gw"] = (gdf["total_capacity_kw"] / 1_000_000).round(2)
    return gdf


def load(gdf: gpd.GeoDataFrame) -> None:
    """Render choropleth map and write to HTML file.

    Args:
        gdf: GeoDataFrame in WGS84 with gen and total_capacity_gw columns.
    """
    OUTPUT_DIR.mkdir(exist_ok=True)

    m = folium.Map(location=[51.5, 10.5], zoom_start=6, tiles="CartoDB positron")

    folium.Choropleth(
        geo_data=gdf.__geo_interface__,
        data=gdf,
        columns=["gen", "total_capacity_gw"],
        key_on="feature.properties.gen",
        fill_color="YlGn",
        fill_opacity=0.75,
        line_opacity=0.4,
        legend_name="Installed wind capacity (GW)",
        nan_fill_color="lightgrey",
    ).add_to(m)

    tooltip = folium.GeoJsonTooltip(fields=["gen", "total_capacity_gw"],
                                    aliases=["State", "Capacity (GW)"])
    folium.GeoJson(gdf.__geo_interface__, tooltip=tooltip,
                   style_function=lambda _: {"fillOpacity": 0, "weight": 0}).add_to(m)

    m.save(OUTPUT_FILE)
    print(f"Wrote map to {OUTPUT_FILE}")


if __name__ == "__main__":
    gdf = extract()
    gdf = transform(gdf)
    load(gdf)