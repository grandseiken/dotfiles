# Prerequisites:
sudo apt-get install i3 i3lock zsh
sudo apt-get imagemagick  # for desktop background
wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh
rm -rf ~/.vim/bundle/Vundle.vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Make symlinks to files in home directory.
TARGETS=".profile .i3/config-template .zshrc .vim/colors .vimrc dircolors .conkyrc conky.sh"

for TARGET in $TARGETS; do
  DOTFILE=$(pwd)/$(dirname $0)/$TARGET
  LINK=~/$TARGET
  rm -rf $LINK
  mkdir -p $(dirname $LINK)
  ln -s $DOTFILE $LINK
done

# Set up terminal colours.
$(dirname $0)/gnome-terminal/install.sh -s dark -p Default
# Change shell to zsh.
chsh -s /usr/bin/zsh
