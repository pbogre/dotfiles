return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"
  use "sainnhe/everforest"
  use "lewis6991/gitsigns.nvim"
  use "lervag/vimtex"
  use {'neoclide/coc.nvim', branch = "release"}
  use{
    "nvim-telescope/telescope.nvim",
    tag = "0.1.2",
    requires = { {"nvim-lua/plenary.nvim"} }
  }
  use{
    "nvim-treesitter/nvim-treesitter",
    run = function()
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end
  }
end)
