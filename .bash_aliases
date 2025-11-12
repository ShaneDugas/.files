alias vim="nvim ."
alias vi="nvim ."
alias lac="ssh -i ~/.ssh/prolug prolug@prolug.asuscomm.com"
alias psc="mchammer@prolug.asuscomm.com"
alias h="history"
alias hist="history"
alias lsl="ls -al"
alias la="ls -al"
# File management
alias mv="mv -i"   # Prompt before overwrite
alias cp="cp -i"   # Prompt before overwrite
alias rm="rm -i"   # Prompt before delete

# Shortcuts for common tasks

alias cls="clear"
alias grep="grep --color=auto"
alias update="sudo apt update && sudo apt upgrade -y"


# --------------------------------------
# BASIC NAVIGATION SHORTCUTS
# --------------------------------------
# Go up one directory
alias ..="cd .."
# Go up two directories
alias ...="cd ../.."
# Go up N directories (usage: up 3)
alias up='cd $(printf "../%.0s" {1..$1})'
# Go to the home directory and clear the screen
alias ~="cd ~"
alias cdh='cd ~; clear'
# Go to the root of the Git repository
alias bd='cd $(git rev-parse --show-toplevel)'

# --------------------------------------
# DIRECTORY AND FILE MANAGEMENT
# --------------------------------------
# Enhanced `ls` commands with colors and better readability
alias ls="ls --color=auto"
alias ll="ls -lh"
alias la="ls -la"
# Make directories with parent directories and show the full path
alias mkdir='mkdir -pv'
# Create and move into a directory simultaneously
alias mkcd='foo() { mkdir -p "$1" && cd "$1"; }; foo'
# Extract tar files
alias untar='tar -xvf'
# Extract `.tar.gz` files
alias untarzip='tar -zxvf'
# Compress files into `.tar.gz`
alias tarzip='tar -czvf'

# --------------------------------------
# SYSTEM MONITORING AND INFORMATION
# --------------------------------------
# Show CPU information
alias cpu="lscpu | grep 'Model name:'"
# Show memory usage
alias meminfo="free -m"
# Top 10 memory-hogging processes
alias top10mem="ps aux --sort=-%mem | head -n 10"
# Top 10 CPU-hogging processes
alias top10cpu="ps aux --sort=-%cpu | head -n 10"

# --------------------------------------
# GIT COMMAND SHORTCUTS
# --------------------------------------
# Git status
alias gs="git status"
# Git add
alias ga="git add"
# Git commit with message
alias gcm="git commit -m"
# Git checkout
alias gco='git checkout'
# Git checkout a new branch
alias gcb='git checkout -b'
# Git log as a graph
alias gl="git log --oneline --graph --decorate"
# Pull the current branch
alias gpull='git pull origin $(git rev-parse --abbrev-ref HEAD)'
# Push the current branch
alias gpush='git push origin $(git rev-parse --abbrev-ref HEAD)'
# Quick stash
alias gstash="git stash push -m 'Quick stash'"
# Go to GitHub URL for the repo in the browser
alias gitopen='xdg-open $(git config --get remote.origin.url | sed "s/git@/https:\/\//" | sed "s/.git$//")'

# --------------------------------------
# NETWORKING AND SYSTEM UTILITIES
# --------------------------------------
#My ip alias ddition
alias ip='ip -color -br addr'
# Get public IP address
alias myip="curl ifconfig.me"
# Show active network connections
alias ports="netstat -tulanp"
# Flush DNS cache
alias flushdns="sudo systemd-resolve --flush-caches"
# Show all listening ports
alias listen="lsof -iTCP -sTCP:LISTEN -P -n"
# Simplify wget mirror command
alias wgetmirror="wget -m -p -E -k -np"
# Show local IPs
alias netinfo="ifconfig | grep 'inet ' | grep -v 127.0.0.1"

# --------------------------------------
# QUICK UTILITIES
# --------------------------------------
# Show history with alias
alias h="history"
# Clear the screen and show files
alias cls='clear; ls -la'
# Edit and reload `.bashrc`
alias editbash='nano ~/.bashrc && source ~/.bashrc'
# Timer to measure elapsed time
alias timer='echo "Timer started. Stop with Ctrl-C."; time cat > /dev/null'
# Update and upgrade system
alias update="sudo apt update && sudo apt upgrade -y"

# --------------------------------------
# FUN AND RANDOM ALIASES
# --------------------------------------
# Print a shrug emoji
alias shrug="echo '¯\_(ツ)_/¯'"
# Run the last command with sudo
alias please="sudo !!"
# Fortune message with cowsay
alias cowsay="fortune | cowsay"

# --------------------------------------
# EXAMPLES OF COMPLEX COMMANDS (FUNCTIONS)
# --------------------------------------
# Backup files with timestamp
alias backup='tar -czvf $(date +%F)-backup.tar.gz'
# Open weather information
alias wx="curl wttr.in"
