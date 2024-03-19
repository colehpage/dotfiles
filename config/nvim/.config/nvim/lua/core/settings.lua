local g = vim.g
local opt = vim.opt

g.mapleader = " "
g.maplocalleader = " "

opt.encoding = "utf-8"
opt.mousehide = true
opt.shortmess:append("filmnrxoOtT") --- Abbrev. of messages (avoids 'hit enter')
opt.viewoptions = "folds,options,cursor,unix,slash" --- Better Unix / Windows compatibility
opt.virtualedit = "onemore" --- Allow for cursor beyond last character
opt.history = 1000 --- Store a ton of history (default is 20)
opt.spell = true --- Spell checking on
opt.hidden = true --- Allow buffer switching without saving

opt.termguicolors = true
opt.number = true --- Line numbers on
opt.relativenumber = false --- Show relative line number
opt.cursorline = true --- Highlight current line
opt.cursorcolumn = false
opt.colorcolumn = "80,120"
opt.signcolumn = "yes:1"
opt.showmode = false --- Display the current mode
opt.showmatch = true --- Show matching brackets/parenthesis
opt.incsearch = true --- Find as you type search
opt.hlsearch = true --- Highlight search terms
opt.foldenable = true --- Auto fold code

opt.clipboard = "unnamedplus"
opt.completeopt = "menu,menuone,noselect"

opt.list = true
opt.listchars = {
    tab = "▸ ",
    trail = "·",
    precedes = "←",
    extends = "→",
    nbsp = "+"
    -- eol = "↲",
}

opt.fillchars = {
    eob = " ",
    diff = ""
}
opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"

opt.timeout = true
opt.timeoutlen = 300

opt.splitright = true
opt.splitbelow = true
opt.equalalways = true

opt.showtabline = 1

--- Formatting
opt.wrap = false --- Do not wrap long lines
opt.shiftwidth = 2 --- Use indents of 4 spaces
opt.expandtab = true --- Tabs are spaces, not tabs
opt.tabstop = 2 --- An indentation every four columns
opt.softtabstop = 2 --- Let backspace delete indent
opt.joinspaces = false --- Prevents inserting two spaces after punctuation on a join (J)
opt.splitright = true --- Puts new vsplit windows to the right of the current
opt.splitbelow = true --- Puts new split windows to the bottom of the current
-- opt.autoindent = true --- Indent at the same level of the previous line
opt.smartindent = true

opt.whichwrap:append{
    ["<"] = true,
    [">"] = true,
    ["["] = true,
    ["]"] = true,
    h = true,
    l = true
}

opt.autoread = true
opt.autowrite = true
opt.autowriteall = true

opt.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

g.loadednetrw = 1
g.loaded_netrwPlugin = 1

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', {
    clear = true
})
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = '*'
})
