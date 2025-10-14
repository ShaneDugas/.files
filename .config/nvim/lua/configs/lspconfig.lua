local lspconfig = require('lspconfig')

-- You can install LSP servers using :Mason in Neovim
-- Then, manually configure them here.

-- Example: Lua Language Server
lspconfig.lua_ls.setup({
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
                enable = false,
            },
        },
    },
})

-- Example: JSON Language Server
lspconfig.jsonls.setup({})

-- Example: HTML Language Server
lspconfig.html.setup({})

-- Example: CSS Language Server
lspconfig.cssls.setup({})

-- Example: TypeScript Language Server
lspconfig.tsserver.setup({})

-- Add more LSP server configurations as needed.
-- You can find a list of available servers and their configurations in the nvim-lspconfig documentation.