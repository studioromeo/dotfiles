function fish_prompt --description 'Write out the prompt'
  set -g __fish_git_prompt_color_branch FF0
  set -l last_status $status

  set_color 777
  echo -n [(date "+%H:%M:%S")]' '

  # PWD
  set_color green
  echo -n (pwd)
  set_color normal

  __fish_git_prompt
  echo

  echo -n '> '
  set_color normal
end
