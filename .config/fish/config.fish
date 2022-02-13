set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases
alias g git
command -qv nvim && alias vim nvim
alias cdd cd
alias cc cd
alias dc cd


if type -q exa
  alias ls "exa -l -g --icons -h --time=changed --time-style=long-iso --git --sort=mod"
  alias tree "exa -l --icons -T -L 2 -h --time=changed --time-style=long-iso --git --sort=mod"
  alias tree2 "exa -l --icons -T -L 3 -h --time=changed --time-style=long-iso --git --sort=mod"
  alias ll "exa -l -g --icons -h --time=changed --time-style=long-iso --git --sort=mod"
  alias lla "ll -a"
end



alias apply-gitignore="git ls-files -ci --exclude-standard -z | xargs -0 git rm --cached"

# pyenv init
if command -v pyenv 1>/dev/null 2>&1
  pyenv init - | source
end

alias star "starship init fish | source"

