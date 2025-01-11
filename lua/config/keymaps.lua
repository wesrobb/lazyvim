-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>b", ":make<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>r", ":!bash ./run.sh<CR>", { noremap = true, silent = false })

-- Check if 'pwsh' is executable and set the shell accordingly
if jit.os == "Windows" then
  vim.keymap.set("n", "<leader>r", ":!pwsh -NoLogo -NoProfile -File ./run.ps1<CR>", { noremap = true, silent = false })
end
