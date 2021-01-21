# get input files from rule
dough = snakemake.input.dough
tools = snakemake.input.tools
params = snakemake.params

file = open(dough, "r")
ingredients = file.read()
file.close()

print(f"The dough contains the following ingredients:\n{ingredients}")
print(f"Wait for the water to reach {params.get('temperature')} degrees...")
print("Press the Spätzledrücker...")
print("Wait a couple of minutes...")
print("Take the Spätzle out of the water...")

# write output to file defined in rule
file = open(snakemake.output.delicious_swabian_food, "w")
file.write("Bon appetit!")
file.close()

for tool in snakemake.output.dirty_tools:
    file = open(tool, "w")
    file.write("Clean me")
    file.close()
