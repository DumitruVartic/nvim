vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
--vim.opt.undodir = os.getenv("USERPROFILE") .. "\\vimfiles\\undodir"
if vim.fn.has("win32") == 1 then
    -- If running on Windows, use os.getenv("USERPROFILE")
    vim.opt.undodir = os.getenv("USERPROFILE") .. "\\vimfiles\\undodir"
else
    -- For non-Windows systems, provide a default path
    vim.opt.undodir = "~/.vim/undodir"
end

vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "
