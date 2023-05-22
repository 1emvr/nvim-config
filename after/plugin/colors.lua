function SelectColorScheme(color)
    color = color or "github-colors"
    vim.cmd.colorscheme(color)
end

SelectColorScheme()
