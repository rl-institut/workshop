## Framework

[fastapi](https://fastapi.tiangolo.com/) is probably faster than flask, however I found flask a
 bit more easy at first to use flask. I think what make it strong is the conceurrency and
  asnychronuous capability.


## Requirements

* python 3.6 or higher

## Getting started

1. Clone the repository locally
2. [Setup](https://oemof.readthedocs.io/en/latest/installation_and_setup.html#using-virtualenv-community-driven) a virtual environment.
3. Install the dependencies `pip install -r requirements.txt`
4. run the app locally with `. run_app.sh`, or `uvicorn fastapi_app.webapp:app --reload --port 5001` you can visualize it in your browser under  `http://127.0.0.1:5001`
