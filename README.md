# dot config

### Cheat Sheets
[Vim](https://vim.rtorr.com/)
[Tmux](https://tmuxcheatsheet.com/)

### MacOS Path

```
/Users/{user_name}
```

### Requirements

kitty
```
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
```

neovim
read [this](https://github.com/lawrencedrums/dotconfig/tree/master/nvim#readme)

### Clone

```
git clone https://github.com/lawrencedrums/dotconfig.github
```

### Install nvim plugins

Navigate to the following file

`lua/my_config/packer.lua`

type in normal mode `:so`, then `:PackerSync` to install plugins.

if `:so` return any error, `:q` to exit nvim and try again

