# ~/.profile: executed by the command interpreter for login shells.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# Get desktop dimensions.
export DESKTOP_DIM=$(xdpyinfo | grep 'dimensions:' | \
    grep -o '[0-9x]\+ pixels' | grep -o '[0-9]\+x[0-9]\+')

# Create .i3/config.
I3CONFIG=$HOME/.i3/config
echo "# Use one workspace across both screens (i.e. Not Shit)" > $I3CONFIG
echo "fake-outputs $DESKTOP_DIM+0+0  # AUTOGENERATED" >> $I3CONFIG
cat $I3CONFIG-template >> $I3CONFIG

# Language and keyboard settings.
export LC_ALL="en_GB.utf8"
export LANG="en_GB.utf8"
setxkbmap gb
