return {
    {
        "nvimtools/none-ls.nvim",
        config = function ()
            local null_ls = require("null-ls")
            local helpers = require("null-ls.helpers")
            local methods = require("null-ls.methods")

            local FORMATTING = methods.internal.FORMATTING

            local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

            local templfmt = {
                name = "templfmt",
                method = FORMATTING,
                filetypes = { "templ" },
                generator = helpers.formatter_factory({
                    command = "templ",
                    args = { "fmt", "$FILENAME" },
                    to_stdin = true,
                }),
            }

            null_ls.setup({
                debug = true,
                sources = {
                    null_ls.builtins.formatting.gofmt,
                    null_ls.builtins.formatting.goimports_reviser,
                    null_ls.builtins.formatting.golines.with({
                        extra_args = { "-m", "80" }
                    }),
                    templfmt,
                },
                on_attach = function (client, bufnr)
                    if client.supports_method("textDocument/formatting") then
                        vim.api.nvim_clear_autocmds({
                            group = augroup,
                            buffer = bufnr,
                        })
                        vim.api.nvim_create_autocmd("BufWritePre", {
                            group = augroup,
                            buffer = bufnr,
                            callback = function ()
                                vim.lsp.buf.format({ bufnr = bufnr })
                            end
                        })
                    end
                end
            })
        end
    }
}

