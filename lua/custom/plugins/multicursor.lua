return {
  'smoka7/multicursors.nvim',
  event = 'VeryLazy',
  dependencies = {
    'nvimtools/hydra.nvim',
  },
  opts = {},
  cmd = { 'MCstart', 'MCvisual', 'MCclear', 'MCpattern', 'MCvisualPattern', 'MCunderCursor' },
  keys = {
    {
      mode = { 'v', 'n' },
      '<c-n>',
      '<cmd>MCstart<cr>',
      desc = 'Multicursor: Create a selection for selected text or word under the cursor',
    },
  },
}
