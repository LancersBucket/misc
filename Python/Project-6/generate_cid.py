"""Generates CID's ID"""
import random
CHARS = "0123456789abcdefghjkpqrstuvwxyzABCDEFGHJKPQRSTUVWXYZ"

for i in range(7):
    out : str = ""
    for i in range(6):
        pick = random.choice(CHARS)
        if i == 0:
            while pick == "0":
                pick = random.choice(CHARS)
        out += pick
    print(out)
