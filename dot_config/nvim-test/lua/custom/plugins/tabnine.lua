return {
  {
    'tzachar/cmp-tabnine',
    build = './install.sh',
    dependencies = 'hrsh7th/nvim-cmp',
    event = "InsertEnter",
    config = function()
      require('cmp_tabnine.config'):setup({
        max_lines = 1000,
        max_num_results = 5,
        sort = true,
        run_on_every_keystroke = true,
        snippet_placeholder = '..',
        show_prediction_strength = false,
      })
    end
  }
}
