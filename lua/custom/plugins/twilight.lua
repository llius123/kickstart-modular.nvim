return {
  'folke/twilight.nvim',
  config = function()
    require('twilight').setup {
      dimming = {
        alpha = 0.25, -- The dimming level (0 means invisible, 1 means no dimming)
      },
      context = 10, -- Number of lines visible around the current scope
      treesitter = true, -- Use treesitter to automatically determine the current scope
      expand = {
        'function',
        'method',
        'class', -- Focus specifically on functions, methods, and classes
      },
    }
  end,
}
