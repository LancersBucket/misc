"""Generates random words from the Soaran language"""
import random

letter_pronunciation : list[tuple[str,str]] = [
    ('a', 'ah'),  ('ai', 'eye'), ('au', 'ow'), ('d', 'duh'),    ('ď', 'juh'),
    ('e', 'eh'),  ('g', 'guh'),  ('h', 'huh'), ('i', 'ih'),     ('k', 'kuh'),
    ('l', 'l'),   ('n', 'nuh'),  ('o', 'oh'),  ('ó', 'aw'),     ('p', 'puh'),
    ('r', 'r'),   ('rr', 'rr'),  ('s', 'sss'), ('sh', 's-huh'), ('skr', 'skr'),
    ('t', 'tuh'), ('tx', 'tsh'), ('u', 'oo'),  ('z', 'zzz'),    ('zh', 'z-huh')
]

def get_letter(k : int) -> str:
    """Get letter"""
    return letter_pronunciation[k][0]

def get_pronunciation(k : int) -> str:
    """Get pronunciation"""
    return letter_pronunciation[k][1]

# Generate 10 random words
for i in range(10):
    word : str = ""
    pronounce : str = ""
    for j in range(random.randint(2,7)):
        index = random.randint(0,len(letter_pronunciation)-1)
        if j == 0:
            pronounce += "{"
            word += get_letter(index).capitalize()
        else:
            word += get_letter(index)

        pronounce += get_pronunciation(index) + "-"

    pronounce = pronounce[:-1]+"}"

    print(word,pronounce)
