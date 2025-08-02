vim.keymap.set('n', '<leader>of', ':Obsidian quick_switch<CR>', {
    desc = 'Fuzzy find Obsidian notes',
})

vim.keymap.set('n', '<leader>os', ':Obsidian search<CR>', {
    desc = 'Fuzzy search Obisidian vault content',
})

vim.keymap.set('n', '<leader>on', ':Obsidian new<CR>', {
    desc = 'Create new Obsidian Note',
})

vim.keymap.set('n', '<leader>og', ':Obsidian follow_link<CR>', {
    desc = 'Follow Obsidian link under the cursor',
})

vim.keymap.set('n', '<leader>ot', ':Obsidian tags<CR>', {
    desc = 'List occuronces of the given Obsidian tag',
})

vim.keymap.set('n', '<leader>oc', ':Obsidian toggle_checkbox<CR>', {
    desc = 'Toggle Obsidian checkbox state',
})

vim.opt.conceallevel = 1

return {
    'obsidian-nvim/obsidian.nvim',
    version = '*',
    lazy = false,
    ft = 'markdown',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'saghen/blink.cmp',
    },
    opts = {
        workspaces = {
            {
                name = 'amir',
                path = '~/vaults/notes',
            },
        },
        completion = {
            blink = true,
        },
        notes_subdir = 'inbox',
        new_notes_location = 'notes_subdir',
        attachments = {
            img_folder = 'attachments',
        },
        legacy_commands = false,
        note_id_func = function(title)
            local suffix = ''
            if title ~= nil then
                suffix = title:gsub(' ', '-'):gsub('[^A-Za-z0-9-]', ''):lower()
            end
            suffix = suffix .. '-' .. tostring(os.time())
            for _ = 1, 4 do
                suffix = suffix .. string.char(math.random(65, 90))
            end
            return suffix
        end,
    },
}
