function dotfiles --description 'Manages dotfiles. Commands: Install, Update'
    if count $argv > /dev/null
        switch $argv
            case 'install'
                command ~/.dotfiles/install
            case 'update'
                command ~/.dotfiles/update
            case '*'
                echo 'Please select either update or install';
        end
    else
        echo 'Please select either update or install';
    end
end
