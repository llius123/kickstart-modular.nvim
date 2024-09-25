return {
  'romgrk/barbar.nvim',
  dependencies = {
    -- 'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    -- 'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  init = function()
    vim.g.barbar_auto_setup = false

    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }
    -- Move to previous/next
    map('n', '<A-h>', '<Cmd>BufferPrevious<CR>', { noremap = true, silent = true, desc = 'Tabs: Move previous' })
    map('n', '<A-l>', '<Cmd>BufferNext<CR>', { noremap = true, silent = true, desc = 'Tabs: Move next' })
    -- Re-order to previous/next
    map('n', '<A-k>', '<Cmd>BufferMoveNext<CR>', { noremap = true, silent = true, desc = 'Tabs: Reorder next' })
    map('n', '<A-j>', '<Cmd>BufferMovePrevious<CR>', { noremap = true, silent = true, desc = 'Tabs: Reorder previous' })
    -- close buffer
    map('n', '<leader>bc', '<Cmd>BufferClose<CR>', { noremap = true, silent = true, desc = 'Tabs: Close buffer' })
  end,
  opts = {
    -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
    -- animation = true,
    -- insert_at_start = true,
    -- …etc.
    icons = {
      filetype = {
        enabled = false,
      },
    },
  },
  version = '^1.0.0', -- optional: only update when a new 1.x version is released
}
