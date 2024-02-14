local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")

-- set vim options with local variable
local opt = vim.opt
-- Change default tab spacing 
opt.shiftwidth = 2
-- Relative Line Number
opt.relativenumber = true
-- Use system clipboard
opt.clipboard = "unnamedplus"

