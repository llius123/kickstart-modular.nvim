-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim
-- Autocommand to enable line numbers for Neo-tree buffers

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    {
      '<leader>e',
      function()
        require('neo-tree.command').execute { toggle = true, reveal = true }
      end,
      desc = 'Toggle NeoTree and reveal current file',
      silent = true,
    },
  },
  opts = {
    filesystem = {
      window = {
        position = 'right',
      },
    },
    event_handlers = {
      {
        event = 'vim_buffer_enter',
        handler = function(arg) end,
      },
      -- Add numbers to the tree
      {
        event = 'neo_tree_buffer_enter',
        handler = function()
          vim.opt_local.relativenumber = true
        end,
      },
    },
  },
}
