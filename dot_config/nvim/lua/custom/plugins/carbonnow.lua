return {
  {
    'ellisonleao/carbon-now.nvim',
    cond = function()
      local hostname = vim.loop.os_gethostname():gsub('\n$', '')
      return hostname ~= 'sirio-eeepc1015pn'
    end,
    event = 'VeryLazy',
    cmd = 'CarbonNow',
    ---@param opts cn.ConfigSchema
    opts = { [[ your custom config here ]] },
  },
}
