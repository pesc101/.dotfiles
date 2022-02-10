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


if type -q exa
  alias ls "exa -l -g --icons"
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end



alias apply-gitignore="git ls-files -ci --exclude-standard -z | xargs -0 git rm --cached"

# pyenv init
if command -v pyenv 1>/dev/null 2>&1
  pyenv init - | source
end
