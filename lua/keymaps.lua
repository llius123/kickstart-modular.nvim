-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- vim: ts=2 sts=2 sw=2 et

-- Ctr + s -> save file
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR><Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-s>', '<Esc>:w<CR>a<Esc>', { noremap = true, silent = true })

-- Zen mode
vim.keymap.set('n', '<leader>zo', ':TwilightEnable<CR>', { desc = 'Zen mode ON' })
vim.keymap.set('n', '<leader>zf', ':TwilightDisable<CR>', { desc = 'Zen mode OFF' })

-- Window management
-- Vertical split
vim.api.nvim_set_keymap('n', '<leader>swv', ':vsplit<CR>', { noremap = true, silent = true, desc = 'Window: Vertical split' })
-- Horizontal split
vim.api.nvim_set_keymap('n', '<leader>swh', ':split<CR>', { noremap = true, silent = true, desc = 'Window: Horizontal split' })
-- Close window
vim.api.nvim_set_keymap('n', '<leader>wc', ':close<CR>', { noremap = true, silent = true, desc = 'Window: Vertical split' })

-- Indent
-- Colors are applied automatically based on user-defined highlight groups.
-- There is no default value.
vim.cmd.highlight 'IndentLine guifg=#123456'
-- Current indent line highlight
vim.cmd.highlight 'IndentLineCurrent guifg=#123456'

-- move lines like vscode
vim.keymap.set({ 'n', 'v' }, '<c-j>', ':m .+1<CR>==', { noremap = true, silent = true, desc = 'Move line dow' })
vim.keymap.set({ 'n', 'v' }, '<c-k>', ':m .-2<CR>==', { noremap = true, silent = true, desc = 'Move line up' })

-- Open a telescope window to show all the projects
vim.keymap.set('n', '<leader>pm', ':Telescope neovim-project discover<CR>', { noremap = true, silent = true, desc = 'Move line dow' })

-- Move to line beginning and end
vim.keymap.set({ 'n', 'v', 'x' }, 'gl', '$', { desc = 'End of line' })
vim.keymap.set({ 'n', 'v', 'x' }, 'gh', '^', { desc = 'Beginning of line' })

-- Disable autocomment when new line
vim.cmd 'autocmd BufEnter * set formatoptions-=cro'
vim.cmd 'autocmd BufEnter * setlocal formatoptions-=cro'
