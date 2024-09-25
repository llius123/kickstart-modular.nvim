return { -- Add indentation guides even on blank lines
  'echasnovski/mini.indentscope',
  version = '*',
  config = function()
    require('mini.indentscope').setup {
      draw = {
        animation = function()
          return 1
        end,
      },
      symbol = '│',
    }
  end,
}
