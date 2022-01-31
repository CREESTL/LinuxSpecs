### Specs for NeoVim
- Install NeoVim as shown [here](https://thomasventurini.com/articles/install-neovim-05-in-ubuntu/) (>0.5.0 required)
- Installed [VimPlug](https://github.com/junegunn/vim-plug) plugin manager
- Installed `pyright` LSP server tool: `sudo npm install -g pyright`
- Installed [rust-analyzer](https://rust-analyzer.github.io/manual.html#rust-analyzer-language-server-binary) LSP server tool
- You can find all configuration information in `init.vim` file. If you want to use it - copy it to `~/.config/nvim/` directory, open `nvim` and run `:PlugInstall` command

Full guide for Rust part of configuration is also [here](https://sharksforarms.dev/posts/neovim-rust/).

### Specs for Vim
- Installed [Vundle](https://github.com/VundleVim/Vundle.vim) plugin manager
- You can find all configuration information in `.vimrc` file. If you want to use it - copy it to `~/` directory

### Specs for Bash
- Installed [OhMyBash](https://ohmybash.nntoan.com/) plugin manager
- You can find all configuration information in `.bashrc` file. If you want to use it - copy it to `~/` directory

### Specs for Git
- You can find all configuration information in `.gitconfig` file. If you want to use it - copy it to `~/` directory

### Specs for Sublime Text
- You can find all configuration information in `User/` directory. If you want to use it - copy the whole directory to:
  -  `~/.config/sublime-text/Packages/` on Linux
  - `~/Library/Application Support/Sublime Text/Packages` on Mac
  - `%APPDATA%\Sublime Text\Data\Packages` on Windows
