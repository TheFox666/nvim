require("null-ls").setup({
    sources = {
        require("null-ls").builtins.diagnostics.phpmd.with({
            extra_args = { 'phpmd.xml' }
        })
    },
})
