return {
  {
    'folke/trouble.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    keys = {
      {
        '<leader>tt',
        function()
          require('trouble').toggle()
        end,
        mode = 'n',
        desc = 'Trouble',
      },

      {
        '[t',
        function()
          require('trouble').next { skip_groups = true, jump = true }
        end,
        mode = 'n',
        desc = 'Next test',
      },
      {
        ']t',
        function()
          require('trouble').previous { skip_groups = true, jump = true }
        end,
        mode = 'n',
        desc = 'Previous test',
      },
    },
    config = function()
      require('trouble').setup {}
    end,
  },
}
