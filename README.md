### Appearance
- `Relax` add-ons from [here](https://store.kde.org/p/1687619/). Can be installed from _files_ (tar.gz) or directly from the _internet_ via System Settings
  - Relax Global (contains _everything_ else below)
  - Relax-Dark-Icons
  - Relax-Plasma Theme
  - Dark Plasma Color Scheme (Relax-Dark-Color)
  - SDDM Login Theme (Relax-SDDM)
  - Plasma Splashscreen (Relax-Splash)
  - Konsole Color Scheme (Relax-Konsole)
  - Dark GTK Theme (Relax-GTK)
- [KDE Sunset Wallpaper](https://github.com/Oman395/kde-sunset-wallpaper)

### Specs for Bash
- Installed [OhMyBash](https://ohmybash.nntoan.com/) plugin manager
- Installed [exa](https://github.com/ogham/exa) replacement for `ls`
- Installed [ScreenFetch](https://github.com/KittyKatt/screenFetch) to see PC info in terminal
- Installed [nala](https://github.com/volitank/nala) wrapper for `apt`
- Installed [htop](https://github.com/htop-dev/htop) for system processes management
- You can find all configuration information in `.bashrc` file. If you want to use it - copy it to `~/` directory

### Specs for Git
- You can find all configuration information in `.gitconfig` file. If you want to use it - copy it to `~/` directory

### Specs for NeoVim
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

### Specs for Sublime Text
- You can find all configuration information in `User/` directory. If you want to use:
  - Remove your `~/.config/sublime-text/Packages/User/` directory
    - (`~/Library/Application Support/Sublime Text/Packages` on Mac)
    - (`%APPDATA%\Sublime Text\Data\Packages` on Windows)
  - Copy the `User` directory from this repo instead of it
  - Rename the following files: `Package Control.sublime-settings` to `'Package Control.sublime-settings'` and `Package Control.user-ca-bundle` to `'Package Control.user-ca-bundle'`
  - Restart Sublime Text several times in order for Package Control to be able to install all packages (it might not work after the first restart)    

__Note__ that the most important file to sync all packages is `'Package Control.sublime-settings'`. The others are the settings for the packages listed in this file and are not essential (but useful)


### Other Stuff
- [Wireguard](https://www.wireguard.com/install/): VPN services
