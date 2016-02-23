function fish_prompt --description 'Write out the prompt'
  set shellColour 777
  set -g __fish_git_prompt_color_prefix $shellColour
  set -g __fish_git_prompt_color_suffix $shellColour
  set -g __fish_git_prompt_color_branch cyan
  set -g __fish_git_prompt_showdirtystate true

  set_color $shellColour
  echo -n (prompt_pwd)

  __fish_git_prompt

  echo -n ' '
end
