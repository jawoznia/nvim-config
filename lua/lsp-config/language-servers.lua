require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "sumneko_lua", "rust_analyzer", "taplo" },
    automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
        },
    },
})

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
    vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, bufopts)
    vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, bufopts)
    vim.keymap.set("n", "<space>wl", function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts)
    vim.keymap.set("n", "<space>gt", vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, bufopts)
    vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, bufopts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
    vim.keymap.set("n", "<space>f", function()
        vim.lsp.buf.format({ async = true })
    end, bufopts)

    -- nvim-lspconfig
    -- Mappings.
    -- See `:help vim.diagnostic.*` for documentation on any of the below functions
    --local opts = { noremap = true, silent = true }
    vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, bufopts)
    vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, bufopts)
    vim.keymap.set("n", "]d", vim.diagnostic.goto_next, bufopts)
    vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist, bufopts)
end

local lsp_flags = {
    -- This is the default in Nvim 0.7+
    debounce_text_changes = 150,
}
require("lspconfig")["sumneko_lua"].setup({
    on_attach = on_attach,
    flags = lsp_flags,
    settings = {
        Lua = {
            diagnostics = { globals = { "vim" } },
        },
    },
})
require("lspconfig")["taplo"].setup({
    on_attach = on_attach,
    flags = lsp_flags,
})
require("lspconfig")["rust_analyzer"].setup({
    on_attach = on_attach,
    flags = lsp_flags,
    -- Server-specific settings...
    settings = {
        ["rust-analyzer"] = {
            --            imports = { granularity = { group = "module" }, prefix = "self" },
            assist = { importGranularity = "module" },
            cargo = { loadOutDirsFromCheck = true },
            procMacro = { enable = true },
            checkOnSave = {
                AllTargets = true,
                AllFeatures = true,
                command = "clippy",
            },
            hover = { linksInHover = false },
        },
    },
})
