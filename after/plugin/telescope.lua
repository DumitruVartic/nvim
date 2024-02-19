local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files, {}) -- find files

-- to use grep install ripgrep
-- $ winget install BurntSushi.ripgrep.MSVC
vim.keymap.set("n", "<leader>fa", builtin.live_grep, {})   -- find all (input)
vim.keymap.set("n", "<leader>fc", builtin.grep_string, {}) -- find current (hover/selected word)
vim.keymap.set("n", "<leader>fs", function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)                                                -- find string, similar to fc, but gets the inputed string

vim.keymap.set("n", "<C-p>", builtin.git_files, {}) -- git
