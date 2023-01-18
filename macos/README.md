# MacOS Dotfiles

These are the dotfiles for my customized MacOS experience. Big focus around neovim and the gruvbox aesthetic. 

## Install
```sh
cd ~                                         # important!
git clone -b macos https://github.com/pbogre/dotfiles
cd dotfiles/macos                            # also important
chmod +x install
./install  
```
Once the installation starts, almost everything will work on its own and the following content will be installed:
- homebrew
- all my homebrew packages (dependencies for nvim etc. but also applications like whatsapp, microsoft word, etc.)
- oh-my-zsh
- all my neovim plugins

User input is needed to exit the :CocInstall page, as if i do that in the script the downloads dont actually finish.
To do this, simply type `:qa`.

The last place user input is needed is at the end of the installation, 
you must enter your password to change your default shell to zsh.

## To-Do

- [x] ~~Setup autocompletion with NeoVim~~
- [x] ~~Setup Telescope in NeoVim~~
- [X] ~~Install script~~
- [ ] Setup GitSigns for NeoVim
- [ ] Switch to a [Lua config](https://github.com/LunarVim/Neovim-from-scratch) for NeoVim.
