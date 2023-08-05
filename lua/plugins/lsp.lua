return {
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            {
                "williamboman/mason.nvim",
                config = true,
            },
            "neovim/nvim-lspconfig",
        },
        config = function()
            require("mason-lspconfig").setup {
                ensure_installed = { "lua_ls", "rust_analyzer","cssls" ,"emmet_ls", "pyright", "ruff_lsp", "html", "tailwindcss", "tsserver",
                    "gopls", "dockerls", "docker_compose_language_service" },
                handlers = {

                    function(server_name) -- default handler (optional)
                        require("lspconfig")[server_name].setup({})
                    end,
--                    function(ensure_installed)
--                        for server in ensure_installed do
--
--                        end
--                    end
                },
            }
        end
    }

}
