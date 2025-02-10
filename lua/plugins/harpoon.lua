return {
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        keys = {
            { "<leader>a", function() require("harpoon"):list():add() end, desc = "Harpoon mark file" },
            {
                "<C-e>",
                function()
                    local harpoon = require("harpoon")
                    harpoon.ui:toggle_quick_menu(harpoon:list())
                end,
                desc = "Harpoon menu"
            },
            { "<C-h>", function() require("harpoon"):list():select(1) end, desc = "Harpoon 1" },
            { "<C-t>", function() require("harpoon"):list():select(2) end, desc = "Harpoon 2" },
            { "<C-n>", function() require("harpoon"):list():select(3) end, desc = "Harpoon 3" },
            { "<C-s>", function() require("harpoon"):list():select(4) end, desc = "Harpoon 4" },
        }
    }
}
