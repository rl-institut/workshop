from dash.dependencies import Input, Output, State


def assign_callbacks(app_handle, data):
    @app_handle.callback(
        [
            # The value of these components of the layout will be changed by this callback
            Output(component_id="table", component_property="columns"),
            Output(component_id="table", component_property="data"),
        ],
        [
            # Triggers the callback when the value of one of these components of the layout is changed
            Input(component_id="ms-select", component_property="value"),
            Input(component_id="area-select", component_property="value"),
            Input(component_id="surface-select", component_property="value"),
        ],
    )
    def update_table(ms, percent_area, surface_type):

        # Select only the country name, the total generation and the specific selected one
        cols = ["__country", "TOTAL", surface_type]

        df_map = data.loc[
            (data.__MS == ms)
            & (data.__percent_area == percent_area)
            & (data.__country != "EU28"),
            cols,
        ]

        cols_name = [{"name": "Country", "id": "__country"}] + [
            {"name": c + " [TWh]", "id": c} for c in df_map.columns if "__" not in c
        ]

        return cols_name, df_map.to_dict("records")
