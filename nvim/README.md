# your nvim config

follow these steps to install all your nvim configs

### requirements

install `neovim`, `ripgreb`

```
brew install neovim

brew install ripgreb
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
 
