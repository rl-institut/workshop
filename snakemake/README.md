# Snakemake Workshop

Let's cook some Spätzle!

## Installation

    clone https://github.com/rl-institut/workshop.git /your/path/to/workshop/
    cd /your/path/to/workshop/
    virtualenv --python=python3.8 /your/path/to/venv/
    source /your/path/to/venv/bin/activate
    pip install -r requirements.txt

### Windows

* git bash
```git 
cd D:/git/github/rl_institut/
git clone git@github.com:rl-institut/workshop.git
cd workshop
git pull
```
    
* cmd
```cms
cd D:/git/github/rl_institut/workshop/snakemake
conda create --name d_py38_snakemake python=3.8
activate d_py38_snakemake
pip install -r requirements.txt
```

## Cooking

To execute the data pipeline, run

    snakemake -j<NUMBER_OF_CPU_CORES>

while `NUMBER_OF_CPU_CORES` is the number of CPU cores to be used for the pipeline execution.
You can also make a dry-run (see what snakemake would do but without actually really doing anything) by typing

    snakemake -n

To clean all produced data (reset pipeline), use

    snakemake -j1 -p clean_up

## Presentation

You can find the workshop slides in [slides/slides.md](slides/slides.md)

## Useful links

- [Snakemake on github](https://github.com/snakemake/snakemake)
- [Snakemake docs](https://snakemake.readthedocs.io)
- [Great basic tutorial](https://github.com/deto/Snakemake_Tutorial)
