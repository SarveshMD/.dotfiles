import sys
import os

try:
    # sys.argv[1] will get's the first argument passed along with the filename. sys.argv[0] is the name of this python file !
    filename = sys.argv[1]
except:
    # These \033[x stuff are just adding some formatting to the output. 
    # Tried to just recreate gcc's errors :)
    print("\033[1mcomp: \033[91mfatal error:\033[0m no input files")
    print("compilation terminated.")
    quit()

if not (filename.endswith(".c") or filename.endswith(".cc") or filename.endswith(".cpp")) :
    print("Invalid file name !")
    print("\033[1mcomp: \033[91mfatal error:\033[0m no input files")
    print("compilation terminated.") 
else:
    file = filename[:filename.find(".")]
    os.system(f"gcc -o {file} {filename}")
