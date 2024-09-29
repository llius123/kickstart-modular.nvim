return {
  'akinsho/toggleterm.nvim',
  version = '*',
  opts = {
    open_mapping = [[<C-t>]],
    direction = 'horizontal',
  },
  config = function()
    -- function _lazygit_toggle(name)
    --   require('toggleterm.terminal').Terminal:new({ display_name = name }):toggle()
    -- end
    --
    -- vim.api.nvim_set_keymap('n', '<leader>t1', "<cmd>lua _lazygit_toggle('1')<CR>", { noremap = true, silent = true })
    -- vim.api.nvim_set_keymap('n', '<leader>t2', "<cmd>lua _lazygit_toggle('2')<CR>", { noremap = true, silent = true })
    local Terminal = require('toggleterm.terminal').Terminal:new {}

    function toggle()
      Terminal:toggle()
    end
    function focus()
      Terminal:focus()
    end

    vim.api.nvim_set_keymap('n', '<leader>t', '<cmd>lua toggle()<CR>', { noremap = true, silent = true, desc = 'Terminal: Open terminal' })
    vim.api.nvim_set_keymap('n', '<leader>tf', '<cmd>lua focus()<CR>', { noremap = true, silent = true, desc = 'Terminal: Focus terminal' })

    vim.api.nvim_set_keymap('t', '<esc>', [[<C-\><C-n>]], { noremap = true, silent = true, desc = 'Terminal: Lose focus terminal from inside terminal' })
    vim.api.nvim_set_keymap(
      't',
      '<leader>t',
      '<cmd>lua toggle()<CR>',
      { noremap = true, silent = true, desc = 'Terminal: Toggle terminal from inside terminal' }
    )
  end,
}
