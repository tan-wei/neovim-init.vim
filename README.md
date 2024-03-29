# neovim-init.vim
My neovim-init.vim Configuration

## Installation

### Install vim-plug
We use [vim-plug](https://github.com/junegunn/vim-plug) as a plugin manager. First, install it according to the README.md in the project.
For example:
```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

```

### Copy *init.vim* and *ginit.vim* to the configuration directory
For example:
```bash
mkdir -p ~/.config/nvim

cp init.vim ~/.config/nvim

cp ginit.vim ~/.config/nvim
```

### Install plugins
Use `:PlugInstall` to install all the plugins. Some plugins requries `pynvim`, install it with `pip install pynvim --local`, and then restart the neovim to execute `:UpdateRemotePlugins`.

### Special instructions on MacOS
`YouCompleteMe` should enable `python3` in neovim, so extra instaurctions should be done:
```bash
pip3 install neovim --upgrade
```
