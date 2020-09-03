# -*- coding: utf-8 -*-
import dash
import dash_core_components as dcc
import dash_html_components as html

# loading external resources
external_stylesheets = ['https://codepen.io/chriddyp/pen/bWLwgP.css']
options = dict(
    # external_stylesheets=external_stylesheets
)

demo_app = dash.Dash(__name__, **options)

demo_app.layout = html.Div(
    children=[
        html.H1(children='Hello Dash'),

        html.Div(children='''Dash: A web application framework for Python.'''),
        # dash_table.DataTable(
        #     id='table',
        #     columns=[{"name": i, "id": i} for i in df_table.columns],
        #     data=df_table.to_dict('records'),
        #     style_table={
        #         'maxHeight': '300px',
        #         'overflowY': 'scroll'
        #     },
        #     # filter_action="native",
        #     # sort_action="native",
        #     # fixed_rows={'headers': True, 'data': 0}
        # ),
        dcc.Graph(
            id='example-graph',
            figure={
                'data': [
                    {'x': [1, 2, 3], 'y': [4, 1, 2], 'type': 'bar', 'name': 'SF'},
                    {'x': [1, 2, 3], 'y': [2, 4, 5], 'type': 'bar', 'name': u'Montréal'},
                ],
                'layout': {
                    'title': 'Dash Data Visualization'
                }
            }
        )
    ]
)

if __name__ == '__main__':
    demo_app.run_server(debug=True)
