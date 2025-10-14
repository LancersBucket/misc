import sys
from pathlib import Path

files = sys.argv.copy()

files.pop(0)

for file in files:
    f = open(file, "r",encoding="UTF-8")
    k = open(str(Path(file).with_suffix(''))+"_Flipped.txt","w",encoding="UTF-8")
    #print(str(Path(file).with_suffix(''))+"_Flipped.txt")

    for x in f:
        line = x
        line = line.split(" ")
        newline = line[-1].strip() + " "
        for i in range(len(line)-1):
            newline += line[i] + " "
        newline += "\n"
        k.write(newline)
