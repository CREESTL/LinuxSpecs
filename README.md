## Summary
My development environment is Windows 11 + WSL (Ubuntu 20.04). Here are some config files I use to enhance my workflow.

### Config for NeoVim
- Install NeoVim as shown [here](https://github.com/neovim/neovim/wiki/Installing-Neovim#debian)
- Copy `nvim/` directory from this repo to `~/.config/`
- Open `~/.config/nvim/` directory in NeoVim
- Run `Lazy` NeoVim command. The Lazy UI must appear
- Press `Shift + S` to sync (install and update) all plugins
- Quit and enter NeoVim

### Config for Bash
- Installed [exa](https://github.com/ogham/exa) replacement for `ls`
- Installed [ScreenFetch](https://github.com/KittyKatt/screenFetch) to see PC info in terminal
- Installed [nala](https://github.com/volitank/nala) wrapper for `apt`
- Installed [htop](https://github.com/htop-dev/htop) for system processes management
- You can find all configuration information in `.bashrc` file. If you want to use it - copy it to `~/` directory

### Config for Git
- You can find all configuration information in `.gitconfig` file. If you want to use it - copy it to `~/` directory

### Config for VSCode 

*Keys*  
Some key remaps had to be done in `Settings` rather than in `~/.config/nvim/` as well, because VSCode is 
responsible for keyboard inputs. For example the `jk` remap for quitting to Normal Mode. To import this keymaps:
- Open VSCode
- Press `Ctrl + Shift + P`
- Search for `Open Keyboard Shortcuts`
- On the shortcuts page look for a small "file with arrow" icon in the top right corner. Press on that icon
- The `keybindings.json` file will pop up
- Copy the contents of the `vscode_keybindings.json` file from this repo into the `keybindings.json` file opened in VSCode 

*Sync*  
[Settings Sync](https://code.visualstudio.com/docs/editor/settings-sync) was activated to sync settings on all of my devices.  

