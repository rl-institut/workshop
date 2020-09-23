# -*- coding: utf-8 -*-
import dash
import dash_core_components as dcc
import dash_html_components as html
import pandas as pd
import dash_table
from dash.dependencies import Input, Output, State

# loading external resources
external_stylesheets = ["https://codepen.io/chriddyp/pen/bWLwgP.css"]
options = dict(
    # external_stylesheets=external_stylesheets
)

demo_app = dash.Dash(__name__, **options)

df_table = pd.read_csv("data/children-per-woman-UN.csv")
df_table = df_table.dropna()


demo_app.layout = html.Div(
    children=[
        html.H1(children="Hello Dash", id="title"),
        html.Div(children="""Hello World !""", id="paragraph"),
        # dash_table.DataTable(
        #     id='table',
        #     columns=[{"name": i, "id": i} for i in df_table.columns],
        #     data=df_table.to_dict('records'),
        #     style_table={
        #         'maxHeight': '300px',
        #         'overflowY': 'scroll'
        #     },
        #     #filter_action="native",
        #     # sort_action="native",
        #     # fixed_rows={'headers': True, 'data': 0}
        # ),
        dcc.Dropdown(
            id="country-select",
            multi=True,
            options=[
                {"label": country, "value": country_iso if country_iso else "none"}
                for country, country_iso in zip(
                    df_table.country.unique(), df_table.country_iso.unique()
                )
            ],
        ),
        dcc.Graph(
            id="example-graph",
            figure={
                "data": [
                    {"x": [1, 2, 3], "y": [4, 1, 2], "type": "bar", "name": "SF"},
                    {
                        "x": [1, 2, 3],
                        "y": [2, 4, 5],
                        "type": "bar",
                        "name": u"Montréal",
                    },
                ],
                "layout": {"title": "Dash Data Visualization"},
            },
        ),
    ]
)


@demo_app.callback(
    [
        Output(component_id="paragraph", component_property="children"),
        Output(component_id="example-graph", component_property="figure"),
    ],
    [Input(component_id="country-select", component_property="value")],
    [State(component_id="example-graph", component_property="figure")],
)
def update_figure(banana, cur_figure):

    if banana is not None:
        fig = {
            "data": [
                {
                    "x": df_table[df_table.country_iso == iso].year,
                    "y": df_table[df_table.country_iso == iso].fertility,
                    "type": "line",
                    "name": iso,
                }
                for iso in banana
            ],
            "layout": {"title": "Dash Data Visualization"},
        }
    else:
        banana = "init"
        fig = cur_figure

    return banana, fig


if __name__ == "__main__":
    demo_app.run_server(debug=True)
