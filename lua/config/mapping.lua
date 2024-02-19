-- ThePrimeagen config
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- zz to center line on half screen

-- Format Buffer
vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format() end)

-- the same as simple J but leaves cursor in place (append next line to current)
vim.keymap.set("n", "J", "mzJ`z")

-- center the cursor in place (better to eyees when half page jumping)
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- center the cursor in middle of screen on search
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- mantains the current copied 'word' on paste
vim.keymap.set("x", "<leader>p", [["_dP]])

-- copy in system clipboard ("+y register) (only y, will remain copy only in nvim)
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete to the void register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- recordings?, for some reason not on Q
vim.keymap.set("n", "Q", "<nop>")

-- change all ocurences of the current word at the cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
