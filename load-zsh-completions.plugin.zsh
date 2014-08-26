# Simple plugin script to make loading the zsh-completions repo into $fpath

COMPLETIONS_D="$(dirname $0)/src"
fpath=(${COMPLETIONS_D} $fpath)
