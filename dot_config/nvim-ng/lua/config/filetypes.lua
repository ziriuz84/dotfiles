vim.filetype.add {
  pattern = {
    ['.*%.blade%.php'] = 'blade',
  },
}

local blade_augroup = vim.api.nvim_create_augroup('BladeFiltypeRelated', { clear = true })
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
  pattern = '*.blade.php',
  group = blade_augroup,
  callback = function()
    vim.bo.filetype = 'blade'
  end,
})

local phm_augroup = vim.api.nvim_create_augroup('kickstart-phm-filetype', { clear = true })
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
  pattern = '*.phm',
  group = phm_augroup,
  callback = function()
    vim.bo.filetype = 'php'
  end,
})
