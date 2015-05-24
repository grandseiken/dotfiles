# Prerequisites:
sudo apt-get install i3 i3lock zsh
wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Make symlinks to files in home directory.
TARGETS=".i3/config .vim/colors .vimrc .conkyrc conky.sh"

for TARGET in $TARGETS; do
  DOTFILE=$(pwd)/$(dirname $0)/$TARGET
  LINK=~/$TARGET
  rm -rf $LINK
  mkdir -p $(dirname $LINK)
  ln -s $DOTFILE $LINK
done

# Set up terminal colours.
$(dirname $0)/gnome-terminal/install.sh -s dark -p Default
