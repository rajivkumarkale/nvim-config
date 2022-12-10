-- [[ plug.lua ]]

return require('packer').startup(function(use)
    -- [[ Plugins go here]] 
    -- packer can update itself
    use { 'wbthomason/packer.nvim' }
    use {                                               -- filesystem navigation
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons'         -- filesystem icons
    }

    -- [[ Theme ]]
    use { 'mhinz/vim-startify' }                        -- start screen
    use { 'DanilaMihailov/beacon.nvim' }                -- cursor jump
    use {
        'nvim-lualine/lualine.nvim',                    -- statusline
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use { "ellisonleao/gruvbox.nvim" }                  -- colorscheme
    use { 'Mofiqul/dracula.nvim' }                     -- colorscheme
    
    -- [[ Dev ]]
    use {
        'nvim-telescope/telescope.nvim',                 -- fuzzy finder
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use { 'majutsushi/tagbar' }                        -- code structure
    use { 'Yggdroot/indentLine' }                      -- see indentation
    use { 'tpope/vim-fugitive' }                       -- git integration
    use { 'junegunn/gv.vim' }                          -- commit history
    use { 'windwp/nvim-autopairs' }                    -- auto close brackets, etc.
    use { 'voldikss/vim-floaterm' }                    -- floating terminal
    use { 'lewis6991/impatient.nvim' }                 -- cache to fast startup
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({
                with_sync = true
            })
        end
    }



end)
