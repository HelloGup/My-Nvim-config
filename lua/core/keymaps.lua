
-- 防止递归 or 静默使用
local opts = {noremap = true,silent = true}

-- 设置主键为空格
vim.g.mapleader = " "

local keymap = vim.keymap


keymap.set("i", "jj", "<ESC>:w<CR>",opts)  -- jj退出并保存 
keymap.set("i", "<ESC>", "<ESC>:w<CR>",opts)  -- jj退出并保存 
keymap.set("n", "<ESC>", ":w<CR>",opts) 

keymap.set("v", "J", ":m '>+1<CR>gv=gv",opts) --视觉模式下上下移动代码
keymap.set("v", "K", ":m '<-2<CR>gv=gv",opts)

-- 向上下左右分屏
keymap.set("n", "sj", ":set nosplitbelow<CR>:split<CR>:set splitbelow<CR>",opts) 
keymap.set("n", "sk", ":set splitbelow<CR>:split<CR>",opts) 
keymap.set("n", "sl", ":set nosplitright<CR>:vsplit<CR>:set splitright<CR>",opts) 
keymap.set("n", "sh", ":set splitright<CR>:vsplit<CR>",opts) 
--水平、垂直分屏布局切换
keymap.set("n", "srh", "<C-w>b<C-w>K",opts) 
keymap.set("n", "srv", "<C-w>b<C-w>H",opts) 

--qf关闭当前窗口
vim.keymap.set("n", "qf", "<C-w>q", opts)
--qc仅保留当前窗口
vim.keymap.set("n", "qc", "<C-w>o", opts)

-- 调整窗口大小
vim.keymap.set("n", "<up>", ":res +3<cr>", opts)
vim.keymap.set("n", "<down>", ":res -3<cr>", opts)
vim.keymap.set("n", "<left>", ":vertical resize+3<cr>", opts)
vim.keymap.set("n", "<right>", ":vertical resize-3<cr>", opts)



keymap.set("n", "\\", ":nohl<CR>",opts) -- 取消搜索高亮 "\"键


--快速移动
keymap.set("n", "J", "5j",opts)
keymap.set("n", "K", "5k",opts)

--Q 强退
--keymap.set("n", "Q", "q!",opts)

--快速缩进
keymap.set("n", "<", "<<",opts)
keymap.set("n", ">", ">>",opts)

--打开关闭折行
keymap.set("n", "<leader>sw", ":set wrap!<CR>",opts)

--折行时同一行也可以上下移动
keymap.set("n", "k", "gk",opts)
keymap.set("n", "j", "gj",opts)
keymap.set("n", "gk", "k",opts)
keymap.set("n", "gj", "j",opts)

-- 全文复制
keymap.set("n", "yG", "ggyG<C-o>",opts)

--跳行首行尾
keymap.set("n", "H", "0",opts)
keymap.set("n", "L", "$",opts)

--删至 行首 行尾
keymap.set("n", "dH", "d0",opts)
keymap.set("n", "dL", "d$",opts)

--Y复制到行尾
keymap.set("n", "Y", "y$",opts)

-- 切换buffer
-- buffer switcher
vim.keymap.set("n", "bh", ":bp<CR>", opts)
vim.keymap.set("n", "bl", ":bn<CR>", opts)

-- ---------- 插件 ---------- ---
-- open nvim-tree
keymap.set("n", "tt", ":NvimTreeToggle<CR>",opts)



