# 2021-01-21 Snakemake Workshop

https://etherpad.wikimedia.org/p/snakemake_workshop

## Fragen

range()
range(start, stop, step)   start = 0?
no=range(1, config.get('number_of_eggs')+1))
Warum 1? Warum +1? => range(1, 5) outputs [1,2,3,4], so range(1, 5+1)=range(1,6) outputs [1,2,3,4,5]

(PF) in .py files `snakemake.input` works for all inputs, or only inputs of the rule using the python script? --> a priori only for the rule

Windows

Der Befehl "cp" ist entweder falsch geschrieben oder konnte nicht gefunden werden. => replace by `copy`

Make a file runable on different OS? => linux and mac have same shell commands ... only windows don't, maybe installing PowerShell would work?

copy doesn't work.. 


Run code in PyCharm directly?

Setup Env? script path?

copy ingredients/egg2.txt ingredients/egg2_cracked.txt

(one of the commands exited with non-zero exit code; note that snakemake uses bash strict mode!)


Some people list the scripts files as an input, which lets snakemake track any changes that you make in a script and re-evaluate if it changed. Have you tried that and did you find that practical? --> Changes in script could maybe noticed by snakemake if you define them as input files. 


Could one use different venv for different snakemake rules ?  --> There is a way to integrate conda with snakemake (did not check in detail). One could theoretically use shell commands to activate/deactivate the venv, not sure


Assume I have several scripts that alter the same file after one another (Input and output are the same in order to save disk space). Do I have to generate pseudo Outputs in each script for snakemake to realise that one script finished or is there another solution? 



Super nice that snakemake can do concurrency, but what happens when using multiprocessing within snakemake?


snakemake in combination with postgres database (airflow has operators to handle db) by writing some checksum of db operations in outputfiles


Can snakemake track changing code?

For tracking changes in scripts, add them to the inputs of a rule

For changes in packages used in the env, do: `pip freeze > pip_freeze.txt` and use this as an input for snakemake


## Quotes

Often, when we do energysystem models, we have some kind of separation of modeling steps (preprocessing, optimization, postprocessing, plots) which makes it a good usecase for snakemake in my view.





