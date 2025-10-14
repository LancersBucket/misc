"""Generates CID's"""
import random
CHARS = "0123456789abcdefghjkpqrstuvwxyzABCDEFGHJKPQRSTUVWXYZ"

print()

for i in range(7):
    out = ""
    for i in range(6):
        pick = random.choice(CHARS)
        if i == 0:
            while pick == "0":
                pick = random.choice(CHARS)
        out += pick
    print(out)
