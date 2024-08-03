-- leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- use independent clipboard for neovim
vim.opt.clipboard = "unnamed"

-- True color
vim.o.termguicolors = true

-- Enable mouse mode
vim.o.mouse = "a"

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- change identation to 4 spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- show line numbers
vim.opt.number = true
vim.opt.numberwidth = 4

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Incremental live completion
vim.opt.inccommand = "split"

-- determines the number of lines above and below the cursor that
-- remain visible even when scrolling
vim.opt.scrolloff = 7

-- character used to visually represent whitespace inserted by Vim
-- to automatically fill lines to a specific width
vim.opt.fillchars = { eob = " " }

-- show trailing whitespace
-- vim.opt.list = true
-- vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣'}

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
vim.opt.whichwrap:append("<>[]hl")

-- dont show mode (insert, visual, etc) in the status line
vim.o.showmode = false

-- always show status line but only of the actual buffer
vim.o.laststatus = 3

-- highlight the current line
vim.o.cursorline = true
vim.o.cursorlineopt = "line,number"

-- sign column always displayed
vim.o.signcolumn = "yes"

-- news panes are displayed right or under the actual pane
vim.o.splitbelow = true
vim.o.splitright = true

-- show matching brackets
vim.o.showmatch = true

-- text wrapping at 80 characters without breaking words
vim.opt.textwidth = 80
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.formatoptions = "jcroqlnt"
vim.opt.breakindent = true
-- vim.opt.breakindentopt = "shift:1,min:0"
vim.opt.showbreak = " ╰─ "

-- store undo history
vim.opt.undofile = true

-- disable swap files
vim.opt.hidden = false

-- fast update time for events
vim.opt.updatetime = 200
