from dash import Dash, dcc, html, Input, Output
import plotly.express as px

import pandas as pd
from os.path import join
import plotly.graph_objects as go

data_folder = "data/enershelf_example"

df = pd.read_csv(join(data_folder,"clinic_loads.csv"), index_col=0)

aggregate = df.sum()


fig = go.Figure()
fig.add_trace(
    go.Scatter(
        x=df.index,
        y=df["clinic_only"],
        name="clinic_only",
        marker=dict(
            color='rgba(246, 78, 139, 0.6)',
            line=dict(color='rgba(246, 78, 139, 1.0)', width=3)
        ),
        stackgroup="one" # this property is used to group some timeseries together
    )
)
fig.add_trace(
    go.Scatter(
        x=df.index,
        y=df["hh_only"],
        name="hh_only",
        stackgroup="one" # this then belong to the same stack group as the above line
    )
)
fig.add_trace(
    go.Scatter(
        x=df.index,
        y=df["combi"],
        name="combi",
    ) # this line does not belong to any stackgroup
)


app = Dash(__name__)

app.layout = html.Div([
    dcc.Graph(id='graph-with-slider', figure=fig),
    dcc.Dropdown(id="select", multi=True, options=[{"label": col, "value": col} for col in df.columns]),
    # dcc.Slider(
    #     df['year'].min(),
    #     df['year'].max(),
    #     step=None,
    #     value=df['year'].min(),
    #     marks={str(year): str(year) for year in df['year'].unique()},
    #     id='year-slider'
    # )
] + [
    html.Div([html.Label(col, htmlFor=f"{col}-value", style={"color":"blue"}), dcc.Input(id=f"{col}-value", value=aggregate[col])])
    for col in df.columns
]

)


@app.callback(
    Output('graph-with-slider', 'figure'),
    Input('select', 'value'))
def update_figure(selected_columns):
    print(selected_columns)

    fig = go.Figure()
    for col_name in df.columns:
        if col_name in selected_columns:
            fig.add_trace(
                go.Scatter(
                    x=df.index,
                    y=df[col_name],
                    name=col_name,
                )
            )

    return fig



if __name__ == '__main__':
    app.run_server(debug=True)
