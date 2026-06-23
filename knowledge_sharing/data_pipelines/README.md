# Knowledge Sharing workshops: Data pipelines

The RLI Knowledge Sharing series is an internal workshop programme that covers
topics in energy system modelling, software engineering, and web development.
Sessions are 90 minutes, combine a presentation with a hands-on part, and are
open to all RLI staff and students.

---

## Goals

- Understand what a data pipeline / ETL process is and why it is more robust
  than cascaded ad-hoc scripts
- Know when a pipeline tool adds value vs. when a simple script is enough
- Navigate the landscape of pipeline tools and choose one for your project
- Build a minimal Snakemake pipeline from scratch

## Preparation — install instructions

Please complete the following steps before the workshop.

### 1. Python

Requires Python ≥ 3.11. Check your version:

```bash
python --version
```

If you need to install or upgrade Python, use your OS package manager or
[python.org/downloads](https://www.python.org/downloads/).

### 2. uv

[uv](https://docs.astral.sh/uv/) is a fast Python package manager used to
set up the workshop environment.

```bash
pip install uv
```

Or via the standalone installer (no pip required):

```bash
# Linux / macOS
curl -LsSf https://astral.sh/uv/install.sh | sh

# Windows (PowerShell)
powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"
```

### 3. Clone the workshop repository

```bash
git clone https://github.com/rl-institut/workshop.git
cd workshop/knowledge_sharing/data_pipelines/material/
```

### 4. Create the environment and install dependencies

```bash
uv venv
source .venv/bin/activate
uv pip install snakemake requests pandas geopandas folium
```

### 5. Smoke test

Run the following to confirm everything is set up correctly:

```bash
uv run python -c "import snakemake; print('Snakemake', snakemake.__version__, '— ready')"
```

If you see a version number printed, you are good to go.

---

## Basic commands

To execute the data pipeline, run
```bash
snakemake -j<NUMBER_OF_CPU_CORES>
```

while `NUMBER_OF_CPU_CORES` is the number of CPU cores to be used for the pipeline execution.
You can also make a dry-run (see what snakemake would do but without actually really doing anything) by typing

```bash
snakemake -n
```

To clean all produced data (reset pipeline), use

```bash
snakemake -j1 clean_up
```

Build the graph (DAG) by

```bash
snakemake -j1 --dag | dot -Tsvg > dag.svg
```

---

## Exercise

Complete the rule `create_wind_capacity_histogram` in the [Snakefile](material/Snakefile).

You can find a possible solution in [Snakefile_solved](material/Snakefile_solved).


---

## Slides

The presentation slides are in [`slides/slides.md`](slides/slides.md) and can
be compiled to PDF with [pandoc](https://pandoc.org/) and a LaTeX installation:

```bash
cd slides
make           # uses xelatex if available, falls back to pdflatex
```

Requires `texlive-xetex` (or `texlive-luatex`) and the RLI beamer theme files
(included in the `slides/` directory).

---

## Further reading

- [Snakemake on github](https://github.com/snakemake/snakemake)
- [Snakemake docs](https://snakemake.readthedocs.io)
- [Great basic tutorial](https://github.com/deto/Snakemake_Tutorial)
- PyPSA-Eur uses Snakemake: [PyPSA-Eur](https://github.com/PyPSA/pypsa-eur)
