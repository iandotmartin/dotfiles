# Custom Functions
build_and_run() {
        docker-compose build $1 && docker-compose run $1
}

## useful for things like sorting a table while keeping the column headers intact:
## $ kubectl get top nodes | header sort -nk2 -r
header() {
        IFS=
        read -r header
        printf '%s\n' "$header"
        "$@"
}

# Aliases
alias utc='date -u +"%Y-%m-%d %H:%M:%S UTC"'
alias epoch='date +%s'
alias gds='gd --staged'
alias dc='docker-compose'
alias dcu='docker-compose up'
alias dcub='docker-compose up --build'
alias dcr='docker-compose run --service-ports'
alias dcb='docker-compose build'
alias dcrb=build_and_run
alias kc=kubectl
