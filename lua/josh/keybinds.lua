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

-- Navigation
set("n", "<leader>e", "<cmd>Ex<CR>") -- Explorer
set("n", "<C-p>", "<cmd>Telescope find_files<CR><ESC>") -- Telescope
set("n", "<C-f>", "<cmd>Telescope live_grep<CR><ESC>") -- Telescope
set("n", "<C-t>", "<cmd>echo bind to tree<CR>") -- Tree Navigation

-- Formatting
set("n", "<leader>f", function()
  vim.lsp.buf.format { async = true }
end)

-- Linting
set("n", "<leader>er", "<cmd>TroubleToggle document_diagnostics<CR>") -- Errors
set("n", "<leader>erq", "<cmd>TroubleToggle document_diagnostics<CR>",
  { silent = true, noremap = true }) -- Quiet
set("n", "<leader>eq", "<cmd>TroubleToggle quickfix<CR>") -- QuickFix


-- Copilot
set("n", "cpa", "<cmd>Copilot enable<CR>") -- enable
set("n", "cpd", "<cmd>Copilot disable<CR>") -- disable
