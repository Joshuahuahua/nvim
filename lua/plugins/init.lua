vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.1',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    use { 'folke/tokyonight.nvim', config = function() vim.cmd [[colorscheme tokyonight-storm]] end}
end)
