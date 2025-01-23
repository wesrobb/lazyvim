-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.o.makeprg = "./build.sh"

-- Check if 'pwsh' is executable and set the shell accordingly
if jit.os == "Windows" then
  if vim.fn.executable("pwsh") == 1 then
    vim.o.shell = "pwsh"
  else
    vim.o.shell = "powershell"
  end

  vim.o.shellcmdflag =
    "-NoLogo -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.UTF8Encoding]::new();$PSDefaultParameterValues['Out-File:Encoding']='utf8';Remove-Alias -Force -ErrorAction SilentlyContinue tee;"
  vim.o.shellredir = '2>&1 | %%{ "$_" } | Out-File %s; exit $LastExitCode'
  vim.o.shellpipe = '2>&1 | %%{ "$_" } | tee %s; exit $LastExitCode'
  vim.o.shellquote = ""
  vim.o.shellxquote = ""

  vim.o.makeprg = "./build.ps1"
end

if vim.g.neovide or vim.g.nvy then
  vim.o.guifont = "JetBrainsMonoNL Nerd Font:h14"
end
