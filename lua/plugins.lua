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
end)
