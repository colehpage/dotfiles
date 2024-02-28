local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
keymap.set('n', 'te', ':tabedit')
-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- telescope general
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<Space>tf', builtin.find_files, {})
vim.keymap.set('n', '<Space>tg', builtin.live_grep, {})
vim.keymap.set('n', '<Space>tb', builtin.buffers, {})
vim.keymap.set('n', '<Space>th', builtin.help_tags, {})
vim.keymap.set('n', '<Space>te', vim.cmd.Telescope, {})

-- telescope git
vim.keymap.set('n', '<Space>gb', builtin.git_branches, {})
vim.keymap.set('n', '<Space>gc', builtin.git_commits, {})
vim.keymap.set('n', '<Space>gC', builtin.git_bcommits, {})
vim.keymap.set('n', '<Space>gs', builtin.git_status, {})
vim.keymap.set('n', '<Space>gS', builtin.git_stash, {})
vim.keymap.set('n', '<Space>gf', builtin.git_files, {})


-- gitsigns
require('gitsigns').setup {
	  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns

    -- Navigation
    keymap.set('n', ']c', function()
      if vim.wo.diff then return ']c' end
      vim.schedule(function() gs.next_hunk() end)
      return '<Ignore>'
    end, {expr=true})

    keymap.set('n', '[c', function()
      if vim.wo.diff then return '[c' end
      vim.schedule(function() gs.prev_hunk() end)
      return '<Ignore>'
    end, {expr=true})

    -- Actions
    keymap.set('n', '<Space>ss', gs.stage_hunk)
    keymap.set('n', '<Space>sr', gs.reset_hunk)
    keymap.set('v', '<Space>ss', function() gs.stage_hunk {vim.fn.line("."), vim.fn.line("v")} end)
    keymap.set('v', '<Space>sr', function() gs.reset_hunk {vim.fn.line("."), vim.fn.line("v")} end)
    keymap.set('n', '<Space>sS', gs.stage_buffer)
    keymap.set('n', '<Space>su', gs.undo_stage_hunk)
    keymap.set('n', '<Space>sR', gs.reset_buffer)
    keymap.set('n', '<Space>sp', gs.preview_hunk)
    keymap.set('n', '<Space>sb', function() gs.blame_line{full=true} end)
    keymap.set('n', '<Space>sd', gs.diffthis)
    keymap.set('n', '<Space>sD', function() gs.diffthis('~') end)
    keymap.set('n', '<Space>tb', gs.toggle_current_line_blame)
    keymap.set('n', '<Space>td', gs.toggle_deleted)

    -- Text object
    keymap.set({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
  end
}