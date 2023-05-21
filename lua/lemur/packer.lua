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
    use( 'navarasu/onedark.nvim' )
    use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} )
    use( 'ThePrimeagen/harpoon' )
    use( 'mbbill/undotree' )
    use( 'tpope/vim-fugitive' )
    use( 
    {
        'nvim-telescope/telescope.nvim', 
        tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
    })
end)

