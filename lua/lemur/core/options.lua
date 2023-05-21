local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = false

-- cursor line
opt.cursorline = true
opt.scrolloff = 8
opt.updatetime = 50
opt.colorcolumn = "80"

-- appearance
opt.termguicolors = false 
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- swap & undo
opt.iskeyword:append("-")
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME").."/.vim/undodir"
opt.undofile = true


