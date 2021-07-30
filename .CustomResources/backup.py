from os import system, path
from sys import argv

try:
    bkpFile = path.expanduser(argv[1])
except IndexError:
    print("File not found, Exiting...")
    exit()

try:
    bkpPath = path.expanduser(argv[2])
except IndexError:
    bkpPath = path.expanduser("~/.bkp")

if not path.exists(bkpPath):
    system(f"mkdir {bkpPath}")
    print(f"Created directory {bkpPath}")

system(f"cp {bkpFile} {bkpPath}/{bkpFile}")
print(f"Copied {bkpFile} to {bkpPath}/{bkpFile}")
