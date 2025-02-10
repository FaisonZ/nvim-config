return {
    {
        "folke/trouble.nvim",
        opts = {
            keys = {
                ["[t"] = "next",
                ["]t"] = "prev",
            },
        },
        cmd = "Trouble",
        keys = {
            {
                "<leader>tt",
                "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
                desc = "Buffer Diagnostics (Trouble)",
            },
        },
    }
}
