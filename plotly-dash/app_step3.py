# -*- coding: utf-8 -*-
import dash
import dash_core_components as dcc
import dash_html_components as html
import pandas as pd
import dash_table
import plotly.graph_objects as go
from dash.dependencies import Input, Output, State

# Load external css resources
external_stylesheets = ["https://codepen.io/chriddyp/pen/bWLwgP.css"]
options = dict(
    # external_stylesheets=external_stylesheets
)


demo_app = dash.Dash(__name__, **options)

# Load the data from the example
df_table = pd.read_csv("data/enspreso_solar_pv_csp.csv")
df_map = df_table.loc[
    (df_table.__MS == 85)
    & (df_table.__percent_area == 3)
    & (df_table.__country != "EU28")
]
init_data = "residential areas roof-top 45 degree south"


# Create a figure with a choropleth map
# more information on maps options and styling: https://plotly.com/python/maps/
initial_map = go.Figure(
    data=go.Choropleth(
        locations=df_map.__country_iso,
        z=df_map[init_data],
        text=df_map.__country,
        colorscale="Blues",
        autocolorscale=False,
        reversescale=True,
        marker_line_color="darkgray",
        marker_line_width=0.5,
        colorbar_ticksuffix=" TWh",
        colorbar_title="Generation potential",
    )
)

initial_map.update_layout(
    title_text=init_data,
    geo=dict(
        showframe=False,
        showcoastlines=False,
        center=dict(lon=10, lat=50),
        lataxis_range=[0, 42],
        lonaxis_range=[35, 80],
    ),
)

# The children argument of any html component is what is inside the html tag
demo_app.layout = html.Div(
    children=[
        html.H1(
            children="Presenting the results from the ENSPRESO renewable potential study",
            id="title",
        ),
        html.Div(
            children=[
                html.P(
                    [
                        "The data source is licenced under Creative Commons Attribution 4.0 International and is available ",
                        html.A(
                            "here",
                            href="https://data.jrc.ec.europa.eu/dataset/18eb348b-1420-46b6-978a-fe0b79e30ad3",
                        ),
                    ]
                ),
                html.P(
                    "This app is part of the workshop for 'Forschungsnetzwerke Systemanalyse und Energiewendebauen' of 2021-05-27"
                ),
            ]
        ),
        html.Div(
            className="parameter-select",
            children=[
                html.H2("Assumed energy density [MW/km2]"),
                dcc.Dropdown(
                    id="ms-select",
                    multi=False,
                    options=[
                        {"label": f"{ms}", "value": ms} for ms in df_table.__MS.unique()
                    ],
                    value=85,
                ),
            ],
        ),
        html.Div(
            className="parameter-select",
            children=[
                html.H2("Percentage of the available non-artificial area"),
                dcc.Dropdown(
                    id="area-select",
                    multi=False,
                    options=[
                        {"label": f"{p}", "value": p}
                        for p in df_table.__percent_area.unique()
                    ],
                    value=3,
                ),
            ],
        ),
        html.Div(
            className="parameter-select",
            children=[
                html.H2("Type of surface for renewable generation"),
                dcc.Dropdown(
                    id="surface-select",
                    multi=False,
                    options=[
                        {"label": c, "value": c}
                        for c in df_map.columns
                        if "__"
                        not in c  # this is to escape the unwanted columns of the dataframe
                    ],
                    value=init_data,
                ),
            ],
        ),
        html.Div(
            className="graphs-area",
            children=[
                # contains the map
                html.Div(
                    className="graph-container",
                    # initial_map is defined above
                    children=dcc.Graph(id="map-graph", figure=initial_map),
                ),
                # contains the barplot
                html.Div(
                    className="graph-container",
                    children=dcc.Graph(
                        id="barplot-graph",
                        # One can also pass a dict to the figure parameter of dcc.Graph component
                        figure={
                            "data": [
                                {
                                    "x": df_map.__country,
                                    "y": df_map[init_data],
                                    "type": "bar",
                                    "name": df_map.__country,
                                }
                            ]
                        },
                    ),
                ),
            ],
        ),
        html.Div(
            className="result-table",
            # Learn more about dash DataTable there: https://dash.plotly.com/datatable
            children=dash_table.DataTable(
                id="table",
                columns=[{"name": "Country", "id": "__country"}]
                + [{"name": c, "id": c} for c in df_map.columns if "__" not in c],
                data=df_map.to_dict("records"),
                style_table={"maxHeight": "300px", "overflowY": "scroll"},
                filter_action="native",
                sort_action="native",
                # fixed_rows={'headers': True, 'data': 0}
            ),
        ),
        m,
    ]
)

# More information in the reference https://dash.plotly.com/basic-callbacks
# Here demo_app should be the name of the variable countaining your Dash app instance
@demo_app.callback(
    [
        # The value of these components of the layout will be changed by this callback
        Output(component_id="map-graph", component_property="figure"),
        Output(component_id="barplot-graph", component_property="figure"),
    ],
    [
        # Triggers the callback when the value of one of these components of the layout is changed
        Input(component_id="ms-select", component_property="value"),
        Input(component_id="area-select", component_property="value"),
        Input(component_id="surface-select", component_property="value"),
    ],
    [
        # Reads the value of a component of the layout
        State(component_id="map-graph", component_property="figure"),
        State(component_id="barplot-graph", component_property="figure"),
    ],
)
def update_figure(ms, percent_area, surface_type, cur_map, cur_barplot):

    df_map = df_table.loc[
        (df_table.__MS == ms)
        & (df_table.__percent_area == percent_area)
        & (df_table.__country != "EU28")
    ]
    data = go.Choropleth(
        locations=df_map.__country_iso,
        z=df_map[surface_type],
        text=df_map.__country,
        colorscale="Blues",
        autocolorscale=False,
        reversescale=True,
        marker_line_color="darkgray",
        marker_line_width=0.5,
        colorbar_ticksuffix=" TWh",
        colorbar_title="Generation potential",
    )

    cur_map["data"] = [data]

    cur_barplot["data"] = [
        {
            "x": df_map.__country,
            "y": df_map[surface_type],
            "type": "bar",
            "name": "Truc",
        }
    ]

    return cur_map, cur_barplot


# # This is not good pratice to not group all import at the top of the module, it is only done here
# # for pedagogical purposes
# from app_step2_callback import assign_callbacks
#
# # Another way to define the callbacks in a function in another module
# assign_callbacks(app_handle=demo_app, data=df_table)


if __name__ == "__main__":
    demo_app.run_server(debug=True)
