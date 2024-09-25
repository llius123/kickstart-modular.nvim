return {
  'coffebar/neovim-project',
  opts = {
    projects = { -- define project roots
      '~/dev/*',
      '~/.config/nvim',
    },
    last_session_on_startup = false,
  },
  dependencies = {
    { 'nvim-lua/plenary.nvim' },
    { 'nvim-telescope/telescope.nvim', tag = '0.1.4' },
    { 'Shatur/neovim-session-manager' },
  },
  lazy = false,
  priority = 100,
}
