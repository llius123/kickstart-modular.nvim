return {
  -- amongst your other plugins
  { 'akinsho/toggleterm.nvim', version = '*', config = true },
  -- or
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = function()
      require('toggleterm').setup {
        direction = 'float',
      }
    end,
  },
}
