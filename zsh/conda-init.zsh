# Downloaded from: https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.pkg
# Then need to run:
# $ conda init zsh
# For CTRL-Labs also need to run:
# $ conda install boto3
# $ conda create -n ctrl python=3.6
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/andrescuervo/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/andrescuervo/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/andrescuervo/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/andrescuervo/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
