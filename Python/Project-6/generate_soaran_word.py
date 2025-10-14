import random

letters = ['a', 'ai', 'au', 'd', 'ď', 'e', 'g', 'h', 'i', 'k', 'l', 'n', 'o', 'ó', 'p', 'r', 'rr', 's', 'sh', 'skr', 't', 'tx', 'u', 'z', 'zh']
pronunciation = ['ah','eye','ow','duh','juh','eh','guh','huh','ih','kuh','l','nuh','oh','aw','puh','r','rr','sss','s-huh','skr','tuh','tsh','oo','zzz','z-huh']

# Generate 5 random words
for i in range(10):
    word = ""
    pronounce = ""
    for j in range(random.randint(2,7)):
        index = random.randint(0,len(letters)-1)
        if j == 0:
            pronounce += "{"
            word += letters[index].capitalize()
        else:
            word += letters[index]

        pronounce += pronunciation[index] + "-"

    pronounce = pronounce[:-1]+"}"

    print(word,pronounce)
