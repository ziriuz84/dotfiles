return {
  'augmentcode/augment.vim',
  cond = function()
    local hostname = vim.loop.os_gethostname():gsub('\n$', '')
    return hostname ~= 'sirio-eeepc1015pn'
  end,
}
