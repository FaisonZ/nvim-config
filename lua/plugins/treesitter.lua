return {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            highlight = {
                enable = true
            },
            ensure_installed = {
                "bash",
                "diff",
                "html",
                "javascript",
                "jsdoc",
                "json",
                "jsonc",
                "lua",
                "luadoc",
                "luap",
                "markdown",
                "markdown_inline",
                "printf",
                "query",
                "regex",
                "tsx",
                "typescript",
                "vim",
                "vimdoc",
                "xml",
                "yaml",
                "go",
                "gomod",
                "gosum",
                "gotmpl",
                "templ",
            },
        },
        config = function (_, opts)
            require("nvim-treesitter.configs").setup(opts)

            vim.treesitter.language.register("templ", "templ")
        end
    },
}
