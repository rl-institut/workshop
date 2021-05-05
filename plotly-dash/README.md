# Preparation before the workshop

## Software

We need Anaconda (a tool to help us manage install and manage Python) and git (a tool for versioning of source code).

Select and download the appropriate software from these websites:

* Anaconda: https://www.anaconda.com/products/individual
* git: https://git-scm.com/downloads

We also recommend you to install an IDE of your choice.
You can e.g. download and install the PyCharm Community Edition (https://www.jetbrains.com/de-de/pycharm/download).

## Opening the command prompt

The Anaconda command prompt is from where we will execute all following commands.

### On Windows:

Open an "Anaconda Prompt" which is a command shell with anaconda correctly setup.
If Anaconda is properly installed you can find it in your startup menu
(windows key, then type "anaconda prompt" or look for it under "programs").

### On Linux/MacOS:

If you have correctly installed Anaconda and added it to your path simply open a command shell.

## Clone GitHub repository

First we clone the GitHub repository to retrieve all the workshop materials:

1. In the command prompt you opened before, navigate to the folder where you want to place your files using `cd`.
In Windows your prompt after starting should show something like
`C:\Users\<Your Username>\`.
To change to your Desktop
```
    > cd Desktop
```

2. Clone the repository
```
    > git clone https://github.com/rl-institut/workshop.git
```

3. Move into the freshly cloned repositor
```
    > cd workshop
```

4. And create your own workspace (in `git` called a `branch`).
```
    > git checkout -b <your_name>
```

## Install required Python software

Next we need to install all Python packages required for the workshop.
With Anaconda this is a piece of cake (and takes as long as eating one).

5. In the same command prompt as before, navigate to the subfolder `plotly-dash`
```
    > cd plotly-dash
```

6. Tell Anaconda to install the necessary software.
```
    > conda env create -f environment.yml
```

7. The Python packages get installed in a dedicated environment (like a folder, just for software).
In order to use them for the workshop we have to tell Anaconda to use this specific environment (to `activate` it):
```
    > conda activate workshop_env
```

## Test your installation

If everything until here work, you can check your installation by running the prototype `plotly` app in your browser.

8. In the prompt from above, type
```
    > python app.py
```

You should now be able to open the app in your browser with the address http://127.0.0.1:8050 .
You should see some simple bar diagrams visualising something.

To close and stop the app, close your browser and stopp the app in the Anaconda prompt by pressing `Ctrl + c`.

You can now close your Anaconda prompt.
To restart the app e.g. during the workshop, you need to open the Anaconda prompt again, navigate to the same folder, activate the environment and then you can run the app again:

```
    (open Anaconda prompt, then: )
    > cd Desktop/workshop/plotly-dash
    > conda activate workshop_env
    > python app.py
```

 
## Resources

- [Dash User Guide](https://dash.plot.ly/) contains the description of all dash components (core, html, datatable, daq) as well of examples and tutorials on how to use the Plotly dash functionalities

- [App example gallery](https://dash-gallery.plotly.host/Portal/) help you forsee what you can do with Plotly dash

## Tips

- in a python terminal type `help(dash_core_components.<name of your component>` to get the description of the component as well as its properties (you need to `import dash_core_components` beforehand)
