# $OpenBSD: dot.profile,v 1.5 2018/02/02 02:29:54 yasuoka Exp $
#
# sh/ksh initialization

PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games

export PATH HOME TERM

# define lang which is not C :D
LANG=en_US.UTF-8
LC_ALL=en_US.UTF-8

export LANG LC_ALL

# sh is good but ksh is way better
export ENV=$HOME/.kshrc

# automaticaly launch X on ttyC0
if [[ $(tty) == '/dev/ttyC0' ]]; then
	exec startx
fi
