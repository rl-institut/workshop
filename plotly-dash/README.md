# Important to install before the workshop
- anaconda https://www.anaconda.com/distribution/
- git https://git-scm.com/downloads
## Somewhat important to install before the workshop
- pycharm community edition https://www.jetbrains.com/de-de/pycharm/download

# Start
open an anaconda prompt (use your windows key and type "anaconda prompt", or look for "anaconda prompt" in the programs)

## commands to create a clone of a github repository

!! open a new anaconda prompt first for these commands

-try to move to the desktop folder
`cd Desktop`

-if this does not work you can just forget this step, it is not so important

-clone the repository

`git clone https://github.com/rl-institut/workshop.git`

-move to the create folder (by default in that case "workshop")

`cd workshop`

-create your own branch (no spaces in the branch name)

`git checkout -b name_of_your_branch`

## create a virtual environment
!! you can do it from the main Anaconda programm (click on "Environnements" and then click on the "create" button at the bottom, choose python 3.6 or python 3.7)

-in the same anaconda prompt type

`conda create --name workshop_env python=3.8`

Note your environnment name here is `workshop_env` but you could change it to another name. If you do you need to replace `workshop_env` by your other name in the following commands

-you should be able to see it with the following command

`conda env list`

-activate the environment with the following command

`conda activate workshop_env`

!! you should see the name "workshop_env" on the left of your command line (in parenthesis)


## Install dependencies and run the app

1. In your terminal, move to the folder `plotly-dash` within the `workshop` repository you just cloned.
   
`cd plotly-dash`

2. Install the dependencies `pip install -r requirements.txt`
3. run the app locally with `python app.py`, you can visualize it in your browser under 
`http://127.0.0.1:8050`
 
## Resources

- [Dash User Guide](https://dash.plot.ly/) contains the description of all dash components (core, html, datatable, daq) as well of examples and tutorials on how to use the Plotly dash functionalities

- [App example gallery](https://dash-gallery.plotly.host/Portal/) help you forsee what you can do with Plotly dash

## Tips

- in a python terminal type `help(dash_core_components.<name of your component>` to get the description of the component as well as its properties (you need to `import dash_core_components` beforehand)
