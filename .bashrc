[ -n "$PS1" ] && source ~/.bash_profile;

# Bash, ~/.bashrc
eval "$(grunt --completion=bash)"
eval `docker-osx env`
