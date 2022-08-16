# install zsh, oh-my-zsh, powerlevel10k

* set terminal colour scheme to solarized dark
* install [font](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k)
  and configure terminal to use it

```sh
sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
cp .zshrc .dircolors ~
```

# install Vundle and YouCompleteMe

```sh
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc ~
```

* run `vim` and execute `:PluginInstall`

```sh
sudo apt-get install build-essential cmake python3-dev vim-nox
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --clangd-completer
```

# install bazelisk etc

```sh
mkdir -p ~/bin && wget -O ~/bin/bazel https://github.com/bazelbuild/bazelisk/releases/download/v1.12.0/bazelisk-linux-amd64
mkdir -p ~/.oh-my-zsh/completions && wget -O ~/.oh-my-zsh/completions/_bazel https://raw.githubusercontent.com/bazelbuild/bazel/master/scripts/zsh_completion/_bazel
```
