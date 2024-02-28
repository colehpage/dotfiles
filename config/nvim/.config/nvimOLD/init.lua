require('colehpage.settings')
require('colehpage.highlights')

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

vim.g.mapleader = " "
vim.g.maplocalleader = " "

require('lazy').setup('colehpage.lazy-config')
require('colehpage.keymaps')
require("colehpage.plugin_config")
require("colehpage.theme_config")

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"
local is_wsl = has "wsl"

if is_mac then
  require('colehpage.macos')
end
if is_win then
  require('colehpage.windows')
end
if is_wsl then
  require('colehpage.wsl')
end
