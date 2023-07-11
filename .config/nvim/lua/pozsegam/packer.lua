-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'


    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }

    }
    use {
        "nobbmaestro/nvim-andromeda",
        requires = { "tjdevries/colorbuddy.nvim", branch = "dev" }
    }
    use('rose-pine/neovim')
    use('catppuccin/nvim')
    use('bluz71/vim-nightfly-colors')
    use('nvim-lualine/lualine.nvim')
    use('nvim-tree/nvim-web-devicons')
    use({ 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } })
    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('navarasu/onedark.nvim')
    use ('jose-elias-alvarez/null-ls.nvim')
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {                            -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        { 'williamboman/mason-lspconfig.nvim' }, -- Optional

        -- Autocompletion
        { 'hrsh7th/nvim-cmp' },     -- Required
        { 'hrsh7th/cmp-nvim-lsp' }, -- Required
        { 'L3MON4D3/LuaSnip' },     -- Required
    }
}
end)
