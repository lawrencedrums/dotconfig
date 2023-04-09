# your nvim config

follow these steps to install all your nvim configs

### requirements

install `neovim`, `ripgreb`, `nerd fonts`

```
brew install neovim

brew install ripgreb

brew tap homebrew/cask-fonts
brew install font-hack-nerd-font
```

### create config directory

in your shall, create the base directory for your config files

```
mkdir -p ~/.config/nvim
```

go to the directory

```
cd ~./config/nvim
```

### clone this repo

run the following command in your shell to clone this repo

```
git clone https://github.com/lawrencedrums/nvim.config.git
```

### packer

go into the following file

`lua/my_config/packer.lua`

type `:so` then `:PackerSync` to install all your plugins

if `:so` is giving errors, just quit nvim and reopen

### Commands

for file explorer
`:Fern . -drawer`

// switching windows (in Vim)
`ctrl-w` + `w` : move to the next windows
`ctrl-w` + `h`/`j`/`k`/`l` : move to the left/bot/top/right windows

