return {
    {
        "jay-babu/mason-null-ls.nvim",
        dependencies = {
            "williamboman/mason.nvim",
            "jose-elias-alvarez/null-ls.nvim",
        },
        config = function()
            require("mason-null-ls").setup({
                ensure_installed = {
                    "black",
                    "eslint_d",
                    "flake8",
                    "isort",
                    "shfmt",
                    "staticcheck",
                    "stylua",
                    "ansiblelint",
                    "rustfmt",
                    "gitsigns",
                    "trim_whitespace",
                    "todo_comments",
                    "htmlbeautifier",
                    "prettierd",
                },
                handlers = {},
            })
--            local null_ls = require("null-ls")
--
--            null_ls.setup({
--                sources = {
--                    null_ls.builtins.formatting.stylua,
--                    null_ls.builtins.formatting.black,
--                    null_ls.builtins.formatting.isort,
--                    null_ls.builtins.formatting.prettierd,
--                    null_ls.builtins.formatting.htmlbeautifier,
--                    null_ls.builtins.diagnostics.flake8,
--                    null_ls.builtins.diagnostics.eslint,
--                    null_ls.builtins.completion.spell,
--                },
--            })
        end,
    },
}
