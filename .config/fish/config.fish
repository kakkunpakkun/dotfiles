if status is-interactive
    # Commands to run in interactive sessions can go here
end

# git
abbr -a g git
abbr -a gst git status
abbr -a gd git diff
abbr -a gs git switch
abbr -a gl git log
alias gc 'git commit'
alias ga 'git add'
alias ggpull 'git pull origin (git_current_branch)'
alias ggpush 'git push origin (git_current_branch)'
alias ls exa
alias l exa
alias la 'exa -la'

function git_current_branch
  set -l ref (git symbolic-ref --quiet HEAD 2> /dev/null)
  set -l ret $status
  if [ $ret != 0 ]
    [ $ret == 128 ]; and return  # no git repo.
    set -l ref (git rev-parse --short HEAD 2> /dev/null); or return
  end
  string replace 'refs/heads/' "" $ref
end
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
set -U fish_user_paths $HOME/.cargo/bin $fish_user_paths
