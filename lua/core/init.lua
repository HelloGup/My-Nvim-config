
-- 禁用nvimtree netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("core.plugins-setup")

require("core.options")
require("core.keymaps")

-- 插件
require("configs.lualine") --状态栏
require("configs.nvim-tree") --文档树

require("configs.treesitter") -- 语法高亮
require("configs.indentline") -- 缩进线
require("configs.lsp") --lsp 
require("configs.handlers").setup() --lsp 
--require("configs.lspsaga") --lsp ui
require("configs.cmp")

require("configs.noice")

require("configs.comment") --gcc注释
require("configs.autopairs") --自动括号

require("configs.bufferline") --buffer分割
require("configs.gitsigns") --左侧git提示
require("configs.telescope")
require("configs.notity") --通知
-- require("configs.toggleterm") -- 终端  使用tmux后用处不大
require("configs.aerial") -- 文档大纲


