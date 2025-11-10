

-- You can install LSP servers using :Mason in Neovim
-- Then, manually configure them here.

-- ============================================================================
-- BEGIN: Diagnostic Signs Configuration
-- ============================================================================
-- Define custom icons for diagnostic signs in the sign column (gutter)
-- These symbols will appear next to lines with errors, warnings, hints, and info
local signs = {
  Error = "✘",  -- Red X for errors
  Warn = "▲",   -- Yellow triangle for warnings
  Hint = "⚑",   -- Flag for hints
  Info = "»"    -- Chevron for info messages
}

-- Register each sign type with Neovim's sign system
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type  -- Highlight group name (e.g., DiagnosticSignError)
  vim.fn.sign_define(hl, {
    text = icon,      -- The icon to display in the sign column
    texthl = hl,      -- Highlight group for the icon color
    numhl = ""        -- No special highlighting for line numbers
  })
end

-- Configure how diagnostics are displayed throughout Neovim
vim.diagnostic.config({
  virtual_text = true,        -- Show diagnostic messages inline at end of line
  signs = true,               -- Show diagnostic signs in the sign column (gutter)
  update_in_insert = false,   -- Don't update diagnostics while in insert mode (less distracting)
  underline = true,           -- Underline the problematic code
  severity_sort = true,       -- Sort diagnostics by severity (errors first, then warnings, etc.)
  float = {
    border = 'rounded',       -- Use rounded borders for floating diagnostic windows
    source = 'always',        -- Always show the source of the diagnostic (e.g., "eslint")
    header = '',              -- No header text in floating window
    prefix = '',              -- No prefix before diagnostic messages
  },
})
-- ============================================================================
-- END: Diagnostic Signs Configuration
-- ============================================================================

local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

-- Example: Lua Language Server
require('lspconfig').lua_ls.setup({
    on_attach = on_attach,
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
require('lspconfig').jsonls.setup({
    on_attach = on_attach,
})

-- Example: HTML Language Server
require('lspconfig').html.setup({
    on_attach = on_attach,
})

-- Example: CSS Language Server
require('lspconfig').cssls.setup({
    on_attach = on_attach,
})

-- Example: TypeScript Language Server
require('lspconfig').ts_ls.setup({
    on_attach = on_attach,
})

-- Add more LSP server configurations as needed.
-- You can find a list of available servers and their configurations in the nvim-lspconfig documentation.