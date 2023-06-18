## Summary
I do all my work on Ubuntu. It has been my main OS for several years. Later I've decided to switch to [WSL](https://learn.microsoft.com/ru-ru/windows/wsl/install). Now my main OS is Windows 11 with Ubuntu 20.04 installed in WSL. All code editing, compilation, etc. is still done on Ubuntu.   

### Appearance (*Ubuntu only*)
- `Relax` add-ons from [here](https://store.kde.org/p/1687619/). Can be installed from _files_ (tar.gz) or directly from the _internet_ via System Settings
  - Relax Global (contains _everything_ else below)
  - Relax-Dark-Icons
  - Relax-Plasma Theme
  - Dark Plasma Color Scheme (Relax-Dark-Color)
  - SDDM Login Theme (Relax-SDDM)
  - Plasma Splashscreen (Relax-Splash)
  - Konsole Color Scheme (Relax-Konsole)
  - Dark GTK Theme (Relax-GTK)

<a name="config_neovim"/>  
  
### Config for NeoVim (*Ubuntu only*)
- Install NeoVim as shown [here](https://github.com/neovim/neovim/wiki/Installing-Neovim#debian)
- Copy `nvim/` directory from this repo to `~/.config/`
- Navigate to `~/.config/nvim/lua/creestl` directory
- Open `packer.lua` file from that directory in NeoVim
- Run (in NeoVim command mode):
```
:so
:PackerSync
```
- All plugins will be installed and configured automatically
- Quit and enter NeoVim

List of all plugins for NeoVim can also be found in `packer.lua` file. Each plugin has a short
comment describing its functionality.

### Config for Bash (*Ubuntu and WSL Ubuntu*)
- Installed [OhMyBash](https://ohmybash.nntoan.com/) plugin manager
- Installed [exa](https://github.com/ogham/exa) replacement for `ls`
- Installed [ScreenFetch](https://github.com/KittyKatt/screenFetch) to see PC info in terminal
- Installed [nala](https://github.com/volitank/nala) wrapper for `apt`
- Installed [htop](https://github.com/htop-dev/htop) for system processes management
- You can find all configuration information in `.bashrc` file. If you want to use it - copy it to `~/` directory

### Config for Git (*Ubuntu and WSL Ubuntu*)
- You can find all configuration information in `.gitconfig` file. If you want to use it - copy it to `~/` directory

### Config for VSCode (*WSL Ubuntu only*)  
Normal config for NeoVim (see [Config for NeoVim](#config_neovim) ) does not work on WSL Ubuntu properly. So it is impossible to use NeoVim with all functionality required for me on WSL. That's why I've switched to VSCode with [VSCode Neovim](https://github.com/vscode-neovim/vscode-neovim) extension for code editing. But again, the problem with this extension is that it does not work out of the box with NeoVim config which I'm used to. So it's required to configure both VSCode (via built-in `Settings` and `Key Shortcuts`) and VSCode NeoVim extenstion (via `~/.config/nvim/...` files) to be as close to NeoVim with plugins as possible.  
Some features like relative line numbering or scrolloff can be configured through VSCode vast settings section. But other features like custom remaps can be easily done the old way (through `init.lua`). Both ways were used in my case. 

**VSCode Settings**   
I will not be describing all changes I've made into default `Settings` as there are too many of them.   

*Remaps*  
Some key remaps had to be done in `Settings` rather than in `~/.config/nvim/` as well, because VSCode is 
responsible for keyboard inputs. For example the `jk` remap for quitting to Normal Mode. To import this keymaps:
- Open VSCode
- Press `Ctrl + Shift + P`
- Search for `Open Keyboard Shortcuts`
- On the shortcuts page look for a small "file with arrow" icon in the top right corner. Press on that icon
- The `keybindings.json` file will pop up
- Copy the contents of the `vscode_keybindings.json` file from this repo into the `keybindings.json` file opened in VSCode  

**VSCode NeoVim Settings**   
As you can see in the [Config for NeoVim](#config_neovim) section above, I've separated plugins, sets, remaps into several subfolders which are all imported into the main `init.lua` file. But for VSCode NeoVim extension *only remaps* are required. All the rest can be configured through VSCode native `Settings`.  
To import custom keymaps into the VSCode NeoVim extension copy files from `vscode_neovim/` directory of this repo into the `~/.config/nvim/` directory on your machine.

**Sync**  
[Settings Sync](https://code.visualstudio.com/docs/editor/settings-sync) was activated to sync settings on all of my devices.  

