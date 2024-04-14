return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    {
      '<leader>a',
      function()
        require('harpoon'):list():add()
      end,
      mode = 'n',
      desc = '[A]dd harpoon mark',
    },
    {
      '<leader>h',
      function()
        local harpoon = require 'harpoon'
        harpoon.ui:toggle_quick_menu(require('harpoon'):list())
      end,
      mode = 'n',
      desc = 'Toggle [H]arpoon quick menu',
    },

    -- Select first mark
    {
      '<leader>j',
      function()
        require('harpoon'):list():select(1)
      end,
      mode = 'n',
      desc = 'Select first Harpoon mark',
    },

    -- Select second mark
    {
      '<leader>k',
      function()
        require('harpoon'):list():select(2)
      end,
      mode = 'n',
      desc = 'Select second Harpoon mark',
    },

    -- Select third mark
    {
      '<leader>l',
      function()
        require('harpoon'):list():select(3)
      end,
      mode = 'n',
      desc = 'Select third Harpoon mark',
    },

    -- Select fourth mark
    {
      '<leader>;',
      function()
        require('harpoon'):list():select(4)
      end,
      mode = 'n',
      desc = 'Select fourth Harpoon mark',
    },

    -- Navigate to previous mark
    {
      '<C-S-P>',
      function()
        require('harpoon'):list():prev()
      end,
      mode = 'n',
      desc = 'Navigate to previous Harpoon mark',
    },

    -- Navigate to next mark
    {
      '<C-S-N>',
      function()
        require('harpoon'):list():next()
      end,
      mode = 'n',
      desc = 'Navigate to next Harpoon mark',
    },
  },
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup()
  end,
}
