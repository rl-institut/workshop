import matplotlib.pyplot as plt


def week_of_maximum(weeks, data):
    maximum = 0
    max_idx = 0
    current_idx = 0
    for d in data:
        if d > maximum:
            maximum = d
            max_idx = current_idx
        current_idx += 1
    return weeks[max_idx]


# How to open a file
f = open('interesting_stuff.csv')

# Reading what's in the file
lines = f.readlines()

# get the data without the labels
data = lines[1:]

weeks = []
python_data = []
piano_data = []
german_data = []

# collect each data column in an list
for line in data:
    line = line[:-1]
    line = line.split(',')
    weeks.append(line[0])
    python_data.append(int(line[1]))
    piano_data.append(int(line[2]))
    german_data.append(int(line[3]))

plt.plot(python_data, label='learn python')
plt.plot(german_data, label='learn german')
plt.plot(piano_data,  label='learn piano')
plt.legend()
plt.show()

week_of_max_interest_in_piano = week_of_maximum(weeks, piano_data)
print(week_of_max_interest_in_piano)
