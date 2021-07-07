# Neovim Settings Linux
Propietary modularized neovim configurations

## Pre-requisites 📋
You need the following software installed:
 * [Neovim](https://github/com/neovim/neovim/wiki/Installing-Neovim)
 * [Git](https://git-scm.com/download/linux)
 * [Npm](https://www.npmjs.com/get-npm) or [Yarn](https://classic.yarnpkg.com/en/docs/install/)
 * [python](https://www.python.org/downloads/) and [pip](https://tecnonucleous.com/2018/01/28/como-instalar-pip-para-python-en-windows-mac-y-linux/)

### Installation 🔧
First you enter the repository folder like this:
```
$ cd nvim/
```
Run the following script:
```
$ bash install.sh
```
or
```
$ ./install.sh
```
## Post-requisites :wrench:
You need the following software installed after installation:
 * [VimPlug](https://github.com/junegunn/vim-plug) - Plugin Package Manager
 * [kite](https://www.kite.com/integrations/vim) and its [complemento](https://github.com/kiteco/vim-plugin/blob/master/DEVELOPMENT.md) for neovim or vim - Autocomplete IA for Python and Javascript 

## Execution :hourglass_flowing_sand:
When you run for the first time you have to write the following  
inside neovim `:PlugInstall` or press the following keys: `<space>+<p>+<i>`.  
The latter installs all the plugins configured in the files.  
Finally run this `:source %` to apply the changes or just exit and re-enter neovim.

Note: If you want to know more about commands, open the file `confCommands.vimrc.
