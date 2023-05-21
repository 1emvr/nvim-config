function SelectColorScheme(color)
    color = color or "onedark"
    vim.cmd.colorscheme(color)
end

SelectColorScheme()
