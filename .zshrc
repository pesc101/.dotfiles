source /usr/local/bin/virtualenvwrapper.sh
export WORKON_HOME="/Users/jan/.virtualenvs"
export PROJECT_HOME="~/Library/Mobile\ Documents/com\~apple\~CloudDocs/Arbeit/Softpark/dev"

export PATH="$HOME/.pyenv/bin:$PATH"
export PATH="/usr/local/bin:$PATH"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include"
PATH=$(pyenv root)/shims:$PATH

if [ -x "$HOME/local/bin/fish" ]; then
    exec "$HOME/local/bin/fish"
fi
