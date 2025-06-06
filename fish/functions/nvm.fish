# nvm fish wrapper
# uses https://github.com/edc/bass
function nvm
   bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end
