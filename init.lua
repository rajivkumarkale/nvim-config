-- [[ init.lua ]] --

-- LEADER
-- These keybindings need to be defined before the first 
-- is called; otherwise, it will default to "\"

vim.g.mapleader = " "
vim.g.localleader = "\\"


-- IMPORTS
require('rajivkumarkale.vars')    -- Variables
require('rajivkumarkale.opts')    -- Options
require('rajivkumarkale.keys')    -- Keymaps
require('rajivkumarkale.plugs')    -- Plugins
 

_G.__luacache_config = {
  chunks = {
    enable = true,
    path = vim.fn.stdpath('cache')..'/luacache_chunks',
  },
  modpaths = {
    enable = true,
    path = vim.fn.stdpath('cache')..'/luacache_modpaths',
  }
}
require('impatient')

-- PLUGINS:
require('nvim-tree').setup{}

require('lualine').setup {
    options = {
        --theme = 'dracula-nvim'
        theme = 'gruvbox'
    }
}

require('nvim-autopairs').setup{} 

require'nvim-treesitter.configs'.setup{
    ensure_installed = {"c", "lua", "rust", "cpp", "python"},

    sync_install = false,
    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}

if vim.fn.has('wsl') == 1 then 
    vim.api.nvim_create_autocmd('TextYankPost', {
        group = vim.api.nvim_create_augroup('Yank', { clear = true}),
        callback = function()
            vim.fn.system('clip.exe', vim.fn.getreg('"'))
        end,
    })
end


if os.getenv('WSL_DISTRO_NAME') ~= nil then
    vim.g.clipboard = {
        name = 'wsl clipboared',
        copy = { ["+"] = {"clip.exe"}, ["*"] = {"clip.exe" } },
        paste = { ["+"] = {"nvim_paste"}, ["*"] = {"nvim_paste"} },
        cache_enabled = true
    }
end

