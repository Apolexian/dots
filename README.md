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
* compton: `https://github.com/chjj/compton`
* stack: `https://docs.haskellstack.org/en/stable/` 
* xmonad: `https://xmonad.org/` - installing from source is better than via system
* neofetch: install normally via distro pm

# After reqs

## With nvim conf

`nvim ~/.config/nvim/lua/plug.lua`

Ignore any errors for now and press enter.

`:PackerSync` - should install all plugins.

Quit neovim and enter it again.

`:checkhealth` to see if any other errors need fixing.

## With lvim conf

Follow installation at `https://www.lunarvim.org/`.
Copy the config over.

Make alacritty the default terminal:

```bash
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/bin/alacritty 50
sudo update-alternatives --config x-terminal-emulator
```

To run compton:

```
compton --config ~/.config/compton/compton.conf
```

Put in some script that runs on startup on your system like `.xinitrc`.
Generally, compton config is pretty specific to system so go through compton docs to customise.

Neofetch, add to .bashrc or .zshrc or whatever:

```
alias neofetch="neofetch --source ~./config/neofetch/logo"
neofetch
```
