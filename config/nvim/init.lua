require('colehpage.base')
require('colehpage.highlights')
require('colehpage.maps')
require('colehpage.plugins')

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