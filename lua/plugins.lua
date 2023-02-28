return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use { 'catppuccin/nvim', as = 'catppuccin' }

  require('catppuccin').setup({
    flavour = 'mocha',
    no_italic = true,
  })
end)
