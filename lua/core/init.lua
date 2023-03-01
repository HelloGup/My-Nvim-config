
require("core.plugins-setup")

require("core.options")
require("core.keymaps")

-- 插件
require("configs.lualine") --状态栏
require("configs.nvim-tree") --文档树

require("configs.treesitter") -- 语法高亮
require("configs.indentline") -- 语法高亮
require("configs.lsp") --lsp 
require("configs.handlers").setup() --lsp 
--require("configs.lspsaga") --lsp ui
require("configs.cmp")

require("configs.noice")

require("configs.comment") --gcc注释
require("configs.autopairs") --自动括号

require("configs.bufferline") --buffer分割
require("configs.gitsigns") --左侧git提示
require("configs.telescope") -- 文件检索
require("configs.notity") -- 文件检索
require("configs.toggleterm") -- 文件检索

