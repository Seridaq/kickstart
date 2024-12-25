return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local harpoon = require('harpoon').setup(require 'harpoon')

      vim.keymap.set('n', '<leader>a', function()
        harpoon:list():add()
      end, { desc = '[A]dd current file to Harpoon list' })
      vim.keymap.set('n', '<C-e>', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end, { desc = 'Toggle quick m[e]nu' })

      vim.keymap.set('n', '<C-H>', function()
        harpoon:list():select(1)
      end, { desc = 'Switch to file 1' })
      vim.keymap.set('n', '<C-J>', function()
        harpoon:list():select(2)
      end, { desc = 'Switch to file 2' })
      vim.keymap.set('n', '<C-K>', function()
        harpoon:list():select(3)
      end, { desc = 'Switch to file 3' })
      vim.keymap.set('n', '<C-L>', function()
        harpoon:list():select(4)
      end, { desc = 'Switch to file 4' })
    end,
  },
}
