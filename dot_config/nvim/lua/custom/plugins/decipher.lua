return {
  'MisanthropicBit/decipher.nvim',
  keys = {
    {
      '<leader>de',
      function()
        require('decipher').encode_selection 'base64'
      end,
      desc = 'Encode base64',
      mode = { 'n', 'v' },
    },
    {
      '<leader>dd',
      function()
        require('decipher').decode_selection('base64', { preview = true })
      end,
      desc = 'Decode base64',
      mode = { 'n', 'v' },
    },
  },
}
