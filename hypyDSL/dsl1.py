from sys import argv, path 
import importlib


# The source file is the 1st argument to the script
if len(argv) != 2:
    #print('usage: %s <src.dsl>' % argv[0])
    print(f"usage: {argv[0]} <src.dsl>")
    exit(1)

path.insert(0, "C:\\Users\\super\\Downloads\\pyDSL")
with open(argv[1], 'r') as file:
    for line in file:
        line = line.strip()
        if not line or line[0] == '#':
            continue
        parts = line.split()
        print(parts)

mod = importlib.import_module(parts[0])
print(mod)
print(parts[1])
getattr(mod, parts[1])(parts[2], parts[3])