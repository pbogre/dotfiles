# MacOS Dotfiles

## Dependencies

- [homebrew](https://brew.sh/)
- [oh-my-zsh](https://ohmyz.sh/) (Location: `.config/zsh/`)
- [alacritty](https://alacritty.org/)
- [neovim](https://neovim.io/)
  - [vim-plug](https://github.com/junegunn/vim-plug) (Remember to run `:PlugInstall`)
  - [yarn](https://yarnpkg.com/) (Required for CoC)
  - `brew install ripgrep fd` (Required for Telescope)
  - [Language Servers](https://github.com/neoclide/coc.nvim/wiki/Language-servers)  
    - `:CocInstall coc-json coc-pyright coc-markdownlint coc-clangd coc-cmake`
    - Includes:
      - JSON
      - Python 3
      - Markdow
      - CLang
      - CMake
      - Haskell (TODO)

## Installing Packages

- Casks: `brew install --cask alacritty cyberduck discord disk-inventory-x gimp keepassxc librewolf mactex-no-gui microsoft-word microsoft-powerpoint microsoft-teams notion skim spotify steam transmission visual-studio-code whatsapp`
- Formulae: `brew install gnuplot yarn neovim node python@3.10`

## To-Do

- [x] Setup autocompletion with NeoVim
- [x] Setup Telescope in NeoVim
- [ ] Setup GitSigns for NeoVim
- [ ] Switch to a [Lua config](https://github.com/LunarVim/Neovim-from-scratch) for NeoVim.
