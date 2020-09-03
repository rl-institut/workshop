from app import create_app

my_app = create_app()

if __name__ == "__main__":
    my_app.run(debug=True)
