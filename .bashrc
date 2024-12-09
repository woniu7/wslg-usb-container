#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

HISTSIZE=100000
HISTFILESIZE=200000

#export GTK_IM_MODULE=fcitx
#export SDL_IM_MODULE=fcitx
#export GLFW_IM_MODULE=ibus
#export XMODIFIERS=@im=fcitx
#export GDK_DPI_SCALE=1.5
export ELECTRON_OZONE_PLATFORM_HINT=wayland
#export DISPLAY=:0
#export WAYLAND_DISPLAY=wayland-0

export GOPATH=$HOME/coding/go

if [ -z "$SCRIPTRUN" ]; then
echo "hello wsl bashrc"
if [[ "$(uname -r)" == *"WSL"* ]]; then
	export DISPLAY=:0
	export WAYLAND_DISPLAY=wayland-0
	ln -s /mnt/wslg/runtime-dir/wayland-0* /run/user/1000/
	export SCRIPTRUN=1
fi
fi
