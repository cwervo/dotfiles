alias alias\?='alias | grep '
alias ps\?='ps | ack'
alias trash='rmtrash'
alias ls='ls -AG'
function case_insensitive_recursive_file_search() {
    find . -not -path '*/\.*' -iname "*$1*"
}
alias lg="case_insensitive_recursive_file_search"
alias cl='clear && ls'
alias rbenv="nocorrect rbenv"
alias dtruss='sudo dtruss'
alias dtrace='sudo dtrace'
alias mcd='__mcd() {mkdir $1 && cd $1};__mcd '
alias cdcn='cd ~/webProjects/codeNow/'
alias js='cd ~/webProjects/andrescuervo.github.io/ && bin/jekyll serve'
alias octo='nocorrect bin/octopress'
alias cdmamp='cd /Applications/MAMP/htdocs/'
alias cdvg='cd ~/webProjects/p5/videoGame && cl'
alias colorsinfo='sed -n "23,36p" ~/.zsh/lscolors'
alias battery='pmset -g ps'
alias batt='battery'

if [ -n "${EDITOR}" ]; then
    alias v='$EDITOR'
else
    alias v='vim'
fi

function video_to_gif() {
    echo "Converting $1 ..."
    ffmpeg -i $1 -vf scale=320:-1 -r 10 -f image2pipe -vcodec ppm - | convert -delay 5 -loop 0 - output.gif
}

alias vim-none='vim -u NONE "+set nocompatible" "+set hls" "+filetype plugin on" "+inoremap jk <Esc>" "+set number" "+set syntax" "+nnoremap fef mx=ggG=\`x" "+set cf"'
alias cdof='cd ~/code/art/ofx9.8/'
alias cdcircle='cd ~/code/work/circleCI'
alias cdci='cdcircle'
alias cdweb='cd ~/webProjects'
alias cdcode='cd ~/code'
alias cdco='cd ~/code'

alias cd210='cd ~/code/school/210/'
alias mars='java -jar /Applications/MARS.jar'

# Open Applications from terminal! :)
alias pocket='open -a "Pocket"'
alias photoshop='open -a Adobe\ Photoshop\ CS6 '

alias cdexercism='cd ~/exercism && cl'
alias extest-ruby='ruby -rminitest/pride'

alias vrexif='exiftool -Artist="Andres Cuervo" -ProjectionType="equirectangular"'
alias cdgames='~/UnityGames'

alias editLocalDictionary='v /Users/$(whoami)/Library/Spelling/LocalDictionary'
# Open a command lin javascript interpreter using just the alias jsc :)
alias jsc='/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc'


# -----------------
# Middleman Aliases
# -----------------
alias midb='middleman build'
alias midd='middleman deploy'
alias midbd='midb && midd'
alias midserve='middleman server'
alias mids='midserve'

alias newblog='__newblog() {vim ~/webProjects/cwervo.com/source/thoughts/`date "+%Y/%m/${1}"`};__newblog'
alias cdtoday='~/webProjects/cwervo.com/source/thoughts/`date "+%Y/%m/"`'

# ------------
# Tmux Aliases
# ------------
alias tksess='tmux kill-session -t'
alias tkpane='tmux kill-pane -t'

# ------------
# Python Aliases
# ------------
# Start up a simple HTTP server with python, put a number after this to specifiy the port, i.e.
# pyserve 8080
alias pyserve='python -m SimpleHTTPServer'
alias py3='python3'


# --------------
# Ruby alias(es)
# --------------
alias ri='ri -Tf ansi'
# Really convenient alias to search through local gems!
alias gem\?='gem list | ack '

# --------------
# Lua alias(es)
# --------------
alias luai="lua -i -e \"_PROMPT='✨ 💖 🤖 🖥 ↦ '\""

# -------------
# Git alias(es)
# -------------
alias git='hub'
alias gitrmignored='git ls-files --ignored --exclude-standard | xargs git rm --cached'
alias gst.='gst .'
alias gstd='__gstd() {git --git-dir=$HOME/"$1"/.git --work-tree=$HOME/"$1" status};__gstd '
alias gshow='git remote show'
alias gshowo='gshow origin'
# To be used in conjunction with hub: https://hub.github.com/
alias git='hub'
# Go to 'git root'
unalias gr
function gr() {
    git_root=`git rev-parse --show-toplevel`
    cd $git_root
}
# Amend commiting to use GPG signing
unalias gcmsg
alias gcmsg='git commit -S -m'
unalias gc
alias gc='git commit -S -v'

# Git diff, no whitespace
alias gdw='gd -w'

# -----------
# SSH Aliases
# -----------
# Set correct terminal for tmux w/ SSH
alias ssh='TERM=xterm ssh'


alias shbook='ssh bookcoop@bookcoop.org'
alias shweb='ssh tinycarr@cwervo.com'
alias shme='ssh acuervo@cs.oberlin.edu'
alias shsql='ssh acuervo@sql.cs.oberlin.edu'
alias shed='ssh admin060606@107.180.21.19'
alias shed2='ssh lucid@ajlc.csr.oberlin.edu'
alias shclyde='ssh acuervo@clyde.cs.oberlin.edu'
alias shoberlinio='ssh cuervo@oberlin.io'
alias shvpn='ssh root@104.131.181.37'

# -------
# Art stuff
# -------
alias electron='/Applications/Electron.app/Contents/MacOS/Electron '
function c2gltf() {
    collada2gltf -f "$1".dae -o "$1".gltf -k
}

# -------
# Other locations
# -------

alias cci="cd ~/code/work/circleCI/"
alias cdeveryday="cd ~/code/art/twentyfourseven/"
alias cdassets='cd ~/code/art/assets-gh'

# ------
# Fuck Alias
# ------
eval "$(thefuck --alias)"

# ------
# Docker Alias
# ------
alias kill-docker-containers='docker kill $(docker ps -q)'
