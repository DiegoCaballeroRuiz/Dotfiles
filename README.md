# My arch linux dotfiles
This repository is structured around the use of gnu stow. Aditionally, all used tools are arch linux packages
The configs are meant to work for my current machine only, expect to find things that need to be changed on install

## To create a new stow package of your own
- Create a directory with the name of the package
- Inside the directory, create a directory structure with the necesary files and directories to be created from ~
- Check any current package for examples

## To copy the config inside a package into your machine
```bash
$ stow packageName
```

### Important note
I have an install script with my full setup under full-setup.sh, read through and use it if you like what's going on
