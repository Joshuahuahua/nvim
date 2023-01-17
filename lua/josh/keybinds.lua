-- vim.keymap.set(mode, keybind, cmd)
-- Modes:
--     n - normal
--     i - insert
--     v - visual
--     t - terminal
-- Keybinds (Special):
--     <leader> - Space
--     <cmd> - :
--     <CR> - Enter

local set = vim.keymap.set

set("n", "<leader>e", "<cmd>Ex<CR>")
set("n", "<C-p>", "<cmd>Telescope find_files<CR>")
