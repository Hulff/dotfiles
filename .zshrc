eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/zen.toml)"
alias ls='eza --icons '
alias lst='eza --icons --level=2 -T'
alias fetch="python3 ~/.config/anifetch/anifetch.py -ff -f ~/.config/anifetch/example.mp4 --framerate 5 -W 110 -H 60 -c '--symbols braille --fg-only'"
alias pwdf='f(){ ls | grep "$1" | while read f; do echo "$(pwd)/$f"; done }; f'

# Set up fzf key bindings and fuzzy completion
nfzf() {
  local file
  file=$(find . -type f -print | fzf --reverse  --preview 'bat --style=numbers --color=always --line-range=:100 {}' --preview-window=right:60%)
  [[ -n "$file" ]] && nano "$file"
}

vfzf() {
  local file
  file=$(find . -type f -print | fzf --reverse --preview 'bat --style=numbers --color=always --line-range=:100 {}' --preview-window=right:60%)
  [[ -n "$file" ]] && vim "$file"
}

cfzf() {
  local dir
  dir=$(find . -type d -not -path '*/.git*' | fzf --reverse  --preview 'exa -a --icons --tree --level=1 --color=always {}' --preview-window=right:60%)
  [[ -n "$dir" ]] && cd "$dir"
}

eval "$(zoxide init --cmd cd zsh)"



