import os
import re
import operator

################

def readall(filename):
    target = os.path.join(os.path.dirname(__file__), filename)
    with open(target, 'r', encoding="utf-8") as f:
        lines = f.read().splitlines()
    return lines

def sortkeyword(filename):
    lines = readall(filename)
    kwlist = list(map(lambda s: s.split('\t'), lines))
    return kwlist

def eraseold(targetlist):
    for line in targetlist:
        if re.match(r'\\index{.+?@(.+?)}', line):
            print(line)
            re.sub(r'\\index{.+?@(.+?)}', '', line)


################
targetlist = readall('chap_1 _mod.tex')
keywordslist = sortkeyword('keywords.txt')

eraseold(targetlist)


# for kw in keywordslist:
#     for line in targetlist:
#         if kw[0] in line and "\index" not in line:
#             print(kw[0], line)

