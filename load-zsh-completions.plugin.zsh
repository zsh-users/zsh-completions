# Simple plugin script to automate loading the zsh-completions repo into
# $fpath for antigen users

COMPLETIONS_D="$(dirname $0)/src"
fpath=("${COMPLETIONS_D}" $fpath)
