code --install-extension dbaeumer.vscode-eslint
code --install-extension EditorConfig.EditorConfig
code --install-extension esbenp.prettier-vscode
code --install-extension GitHub.github-vscode-theme
code --install-extension GitHub.vscode-pull-request-github
code --install-extension markis.code-coverage
code --install-extension ms-vscode.vscode-typescript-tslint-plugin
code --install-extension runem.lit-plugin
code --install-extension wayou.vscode-todo-highlight
code --install-extension xabikos.JasmineSnippets

# VS Code Config
ln -vsf $DOTFILES/vscode/settings.json ~/Library/Application Support/Code/User/
