
-- 解决下载超时
require("nvim-treesitter.install").prefer_git = true
require("core.plugins-setup")

require("core.options")
require("core.keymaps")

-- 插件
require("configs.lualine") --状态栏
require("configs.nvim-tree") --文档树

require("configs.treesitter") -- 语法高亮
require("configs.lsp") -- 
require("configs.cmp")

require("configs.comment") --gcc注释
require("configs.autopairs") --自动括号

require("configs.bufferline") --buffer分割
require("configs.gitsigns") --左侧git提示
require("configs.telescope") -- 文件检索
require("configs.notity") -- 文件检索

