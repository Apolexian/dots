# Reqs

* Rust, cargo: `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`
* fd: `https://github.com/sharkdp/fd`
* neovim: `https://github.com/neovim/neovim/wiki/Installing-Neovim` - install from source as package managers tend to have outdated nvim versions
* nodejs, npm: install normally via distro pm
* python3, pip3: install normally via distro pm
* curl: install normally via distro pm
* tree-sitter: `cargo install tree-sitter-cli` or `npm install tree-sitter-cli`
* git: install normally via distro pm
* npm-neovim: `npm install -g neovim`
* ripgrep: `https://github.com/BurntSushi/ripgrep`
* latex: whichever latex support you like
* rofi: `https://github.com/davatorium/rofi`
* alacritty: `https://github.com/alacritty/alacritty`

# After reqs

`nvim ~/.config/nvim/lua/plug.lua`

Ignore any errors for now and press enter.

`:PackerSync` - should install all plugins.

Quit neovim and enter it again.

`:checkhealth` to see if any other errors need fixing.

Make alacritty the default terminal:

```bash
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/bin/alacritty 50
sudo update-alternatives --config x-terminal-emulator
```

