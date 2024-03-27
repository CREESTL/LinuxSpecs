## Summary
My development environment is Windows 11 + WSL (Ubuntu 20.04). Here are some config files I use to enhance my workflow.

### Config for Neovim
- Install NeoVim as shown [here](https://dev.to/asyncedd/building-neovim-from-source-1794)
- Install [ripgrep](https://github.com/BurntSushi/ripgrep)
- Copy `nvim/` directory from this repo to `~/.config/`
- Open `~/.config/nvim/` directory in neovim
- Run `Lazy` neovim command. The Lazy UI must appear
- Press `Shift + S` to sync (install and update) all plugins
    - Note that [dap](https://github.com/CREESTL/LinuxSpecs/blob/master/nvim/lua/creestl/plugins/dap.lua) debugger requires [codelldb](https://github.com/vadimcn/codelldb) to be installed (or linked) to `usr/bin/codelldb`
- Reload neovim

### Config for Tmux
- Copy `tmux/` directory from this repo to `~/.config/`
- Press `CTRL+B SHIFT+I`
- Reload tmux

### Config for Zsh
- Install zsh: `sudo apt install zsh`
- Install Oh My Zsh: `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- Install [exa](https://github.com/ogham/exa) replacement for `ls`
- Install [ScreenFetch](https://github.com/KittyKatt/screenFetch) to see PC info in terminal
- Install [nala](https://github.com/volitank/nala) wrapper for `apt`
- Install [htop](https://github.com/htop-dev/htop) for system processes management
- Install `powerlevel10k` theme via Oh My Zsh. See [guide](https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#oh-my-zsh)
- Copy `.p10k.zsh` file to `~/` directory
- Copy `.zshrc` file to `~/` directory
- Reload zsh

### Config for Git
- Copy `.gitconfig` file to `~/` directory

### Config for Python
This config is ment to be applied to the 'global' Python of your system. So that you don't need to create a new venv each time just to lint/test/typecheck a Python project. But it can be used in venv perfectly fine.
- Copy `requirements.txt` file from this repo to some location on your machine (e.g. `~/`)
- `cd` to that directory
- Run `python3 install -r requirements.txt`

### Config for mypy
- Make sure [mypy](https://mypy-lang.org/) is installed on your machine. For example, use `requirements.txt` from "Config for Python" section
- Copy `.mypy.ini` file from this repo to `~/` directory

