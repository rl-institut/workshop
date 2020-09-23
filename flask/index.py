from app import create_app


my_app = create_app()

# example to add a dash app within your flask server (in this example at endpoint "/whatever/")
# import dash
# import dash_html_components as html
# import dash_core_components as dcc
# dash_app = dash.Dash(server=my_app, routes_pathname_prefix="/whatever/")
# dash_app.layout = html.Div(children=["My Dash app", dcc.Dropdown()])

if __name__ == "__main__":
    my_app.run(debug=True)
