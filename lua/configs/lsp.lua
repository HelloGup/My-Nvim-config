require("mason").setup({
  ui = {
      icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
      }
  }
})

require("mason-lspconfig").setup({
  -- 确保安装，根据需要填写
  ensure_installed = {
    "clangd"
  },
})

--c/c++
require'lspconfig'.clangd.setup{
  capabilities = capabilities,
}

--lua
require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
}


--提示图标
--  local signs = {
--      { name = "DiagnosticSignError", text = "" },
--      { name = "DiagnosticSignWarn", text = "" },
--      { name = "DiagnosticSignHint", text = "" },
--      { name = "DiagnosticSignInfo", text = "" },
--    }
-- 


-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

--local capabilities = require('cmp_nvim_lsp').default_capabilities()


-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
-- 错误信息浮窗
vim.keymap.set('n', 'gl', vim.diagnostic.open_float, opts)
--跳转到上一个或下一个错误
vim.keymap.set('n', '<leader>dk', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', '<leader>dj', vim.diagnostic.goto_next, opts)
--问题发送到窗口
--vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

local lspconfig = require("lspconfig")
local function on_attach(client, bufnr) -- set up buffer keymaps, etc.
  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  --跳函数声明
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  --跳函数定义
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  --文档窗
  vim.keymap.set('n', 'gh', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  --重命名
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
--  vim.keymap.set('n','<A-cr>',vim.lsp.buf.code_action()<CR>,bufopts)
end

local lsp_flags = {
  debounce_text_changes = 100,
}
