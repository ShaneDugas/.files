local cmp = require('cmp')
local luasnip = require('luasnip')


cmp.setup({
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' }, -- For snippets
        { name = 'buffer' },
        { name = 'path' },
    }),
})
