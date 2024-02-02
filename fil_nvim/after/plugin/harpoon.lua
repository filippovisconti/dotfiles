local wk = require("which-key")
-- harpoon
vim.keymap.set('n', '<leader>hx', require('harpoon.mark').add_file)
vim.keymap.set('n', '<leader>hn', require('harpoon.ui').nav_next)
vim.keymap.set('n', '<leader>hp', require('harpoon.ui').nav_prev)
vim.keymap.set('n', '<leader>hl', require('harpoon.ui').toggle_quick_menu)
-- Harpoon Which-key mappings
wk.register({
    -- The first key you are pressing
    h = {
        name  = "harpoon",
        -- the second key
        x = { function()
            require('harpoon.mark').add_file()
        end, "Mark file" },
        n = { function()
            require('harpoon.ui').nav_next()
        end, "Next file" },
        p = { function()
            require('harpoon.ui').nav_prev()
        end, "Previous file" },
        l = { function()
            require('harpoon.ui').toggle_quick_menu()
        end, "Show Harpoon Marks list" },
    },
}, { prefix = "<leader>" })
