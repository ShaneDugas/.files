-- Configuration for tpope/vim-fugitive
-- Fugitive is mostly command-based, so extensive Lua setup is often not needed.
-- You can add any specific global settings here if you have them.
-- For example:
-- vim.g.fugitive_legacy_commands = 0
vim.keymap.set("n", "<leader>gs", vim.cmd.Git);
