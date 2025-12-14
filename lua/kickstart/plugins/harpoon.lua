local harpoon = require 'harpoon'
local ui = require 'harpoon.ui'

harpoon:setup {}

vim.keymap.set('n', '<leader>a', function()
    harpoon:list():add()
end, { desc = 'Add file to Harpoon' })

vim.keymap.set('n', '<C-e>', function()
    ui:toggle_quick_menu(harpoon:list())
end, { desc = 'Toggle Harpoon menu' })

vim.keymap.set('n', '<C-h>', function()
    harpoon:list():select(1)
end, { desc = 'Harpoon file 1' })
vim.keymap.set('n', '<C-t>', function()
    harpoon:list():select(2)
end, { desc = 'Harpoon file 2' })
vim.keymap.set('n', '<C-n>', function()
    harpoon:list():select(3)
end, { desc = 'Harpoon file 3' })
vim.keymap.set('n', '<C-s>', function()
    harpoon:list():select(4)
end, { desc = 'Harpoon file 4' })
