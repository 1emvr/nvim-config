local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end
local packer_bootstrap = ensure_packer()

vim.cmd([[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
    augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
    return
end

return require('packer').startup(function(use)
    -- Packer can manage itself
    use( 'wbthomason/packer.nvim' )
    use( 'lourenci/github-colors' )
    use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} )
    use( 'ThePrimeagen/harpoon' )
    use( 'tpope/vim-fugitive' )
    use( 'christoomey/vim-tmux-navigator' )
    use( 'szw/vim-maximizer' )
    use( 'kyazdani42/nvim-web-devicons' )
    use( 'nvim-lualine/lualine.nvim' )
    use( 'nvim-tree/nvim-tree.lua' )
    use( 'ThePrimeagen/vim-be-good' )
    use({
        "folke/noice.nvim",
        config = function()
            require("noice").setup()
        end,
        requires = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        },
    })
    use( 
    {
        'nvim-telescope/telescope.nvim', 
        tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
    })
    use(
    {
        'VonHeikemen/lsp-zero.nvim',
        requires = 
        {
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            {'saadparwaiZ1/cmp_luasnip'},
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    })
end)
  
