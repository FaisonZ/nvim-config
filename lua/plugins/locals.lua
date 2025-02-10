return {
    {
        "bring-a-map.nvim",
        dir = "~/projects/neovim/bring-a-map.nvim",
        keys = {
            {
                "<leader>ms",
                "<cmd>BMToggle<cr>",
                desc = "Bring a Map - Toggle recording"
            },
            {
                "<leader>mp",
                "<cmd>BMPrint<cr>",
                desc = "Bring a Map - Print graph"
            },
            {
                "<leader>me",
                "<cmd>BMMap<cr>",
                desc = "Bring a Map - Toggle map"
            },
            {
                "<leader>mr",
                "<cmd>BMReset<cr>",
                desc = "Bring a Map - Reset map"
            },
        }
    }
}
