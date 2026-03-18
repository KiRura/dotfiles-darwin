. ~/.nix-profile/etc/profile.d/hm-session-vars.sh

alias ls="lsd"

abbr -a ffmpeg ffmpeg -hwaccel videotoolbox
abbr -a disablesleep "sudo pmset -b sleep 0; sudo pmset -b disablesleep 1"
abbr -a enablesleep sudo pmset -b disablesleep 0
