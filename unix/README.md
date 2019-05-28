# Virtual Environments

```bash
# Create virtual environment
conda create --name test python=3.7 numpy pandas seaborn=0.9.0 ipykernel

# To activate this environment, use
conda activate pandas_workshop

# To deactivate an active environment, use
conda deactivate

# remove virtual environment
conda remove --name your_env_name --all
```

# Unix

tag:  write output to file, pipe out
```bash
# put output into a file
$ wc -l * > temp.txt
```

---
tag:  interactive python, run file, time file
```bash
$ ipython

[20]: %time execfile("ds6_report.py")
```

---

[Unix File System Permissions](https://en.wikipedia.org/wiki/File_system_permissions)  
 * owner, group, user
 * read, write, executable
 
---

`Sudo`  
Sudo is a super user account that is built into UNIX-based systems, and because it executes commands as the administrator, overriding the system’s usual warnings and precautions, you should be extremely careful when using this command.

## Environment
- list environment variables to screen
```bash
printenv
```
