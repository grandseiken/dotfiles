# Make symlinks to files in home directory.
TARGETS=".i3/config .vim/colors .vimrc .conkyrc conky.sh"

for TARGET in $TARGETS; do
  DOTFILE=$(pwd)/$(dirname $0)/$TARGET
  LINK=~/$TARGET
  rm -rf $LINK
  mkdir -p $(dirname $LINK)
  ln -s $DOTFILE $LINK
done
