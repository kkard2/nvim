return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use { 'catppuccin/nvim', as = 'catppuccin' }

  require('catppuccin').setup({
    flavour = 'mocha',
    no_italic = true,
  })

  use {
    'nvim-lualine/lualine.nvim',
    as = 'lualine',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  require('lualine').setup()

  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }

  use {
    "nvim-neo-tree/neo-tree.nvim",
      branch = "v2.x",
      requires = { 
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
      }
  }

  use 'nvim-tree/nvim-web-devicons'
  use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end}
end)
