return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'hyper',
      config = {
        week_header = {
          enable = true,
        },
        shortcut = {
          { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
          {
            icon = ' ',
            icon_hl = '@variable',
            desc = 'Files',
            group = 'Label',
            action = 'Telescope find_files',
            key = 'f',
          },
          {
            desc = '󰥩 Grep',
            group = 'Files',
            action = 'Telescope live_grep',
            key = 'a',
          },
          {
            desc = ' dotfiles',
            group = 'Number',
            action = 'Telescope dotfiles',
            key = 'd',
          },
        },
        footer = function()
          local info = {}
          local fortune = require('fortune').get_fortune()
          info[1] = '  Neovim loaded ' .. vim.fn.strftime '%H:%M' .. ' on ' .. vim.fn.strftime '%d/%m/%Y' .. " '"
          local footer = vim.list_extend(info, fortune)
          return footer
        end,
      },
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
