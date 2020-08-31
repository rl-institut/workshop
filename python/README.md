# 2020-02-13 RLI Python Workshop

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

-create your own branch

`git checkout -b 2020-02-13_rli_python`

## create a virtual environment
!! you can do it from the main Anaconda programm (click on "Environnements" and then click on the "create" button at the bottom, choose python 3.6 or python 3.7)

-in the same anaconda prompt type

`conda create --name workshop_env python=3.6`

-you should be able to see it with the following command

`conda env list`

-activate the environment with the following command

`conda activate workshop_env`

!! you should see the name "workshop_env" on the left of your command line (in parenthesis)

-install a python package using this command

`pip install jupyterlab`

## open a live editor in your browser
-simply type

`jupyter lab`

in your terminal and it will open it automatically for you :)

!! if you open a new anaconda prompt and you already created the environment and installed the package, you don't have to do it again \o/
-simply activate the previously created environment

`conda activate workshop_env`

!! that's it, now you can run

`jupyter lab`

again and let the magic happen

# TIPS

you can at any time view the content of this course's notebooks direclty into your browser: go under the workshop/python folder (in you conventional mouse+click folder browser) and double click on the .html file, they should open in your internet browser :)

## commands to move inside a terminal
- list the content of the current directory in which you are

`ls` (linux)

`dir` (windows)

- change directory

`cd <name of the directory>`

-go one step higher in the folder structure

`cd ..`
