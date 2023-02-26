
-- 防止递归  右下角不显示
local opts = {noremap = true,silent = true}

-- 设置主键为空格
vim.g.mapleader = " "

local keymap = vim.keymap


--------插入模式-----------
keymap.set("i", "jj", "<ESC>:w<CR>",opts)  -- jj退出并保存 

keymap.set("v", "J", ":m '>+1<CR>gv=gv",opts) --视觉模式下上下移动代码
keymap.set("v", "K", ":m '<-2<CR>gv=gv",opts)

--------正常模式----------
keymap.set("n", "<leader>sv", "<C-w>v",opts) -- 水平新增窗口 
keymap.set("n", "<leader>sh", "<C-w>s",opts) -- 垂直新增窗口

keymap.set("n", "\\", ":nohl<CR>",opts) -- 取消搜索高亮 "\"键

--快速移动
keymap.set("n", "J", "5j",opts)
keymap.set("n", "K", "5k",opts)

--Q 强退
keymap.set("n", "Q", "q!",opts)

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


--跳行首行尾
keymap.set("n", "H", "0",opts)
keymap.set("n", "L", "$",opts)

--Y复制到行尾
keymap.set("n", "Y", "y$",opts)

-- 切换buffer
keymap.set("n", "<leader>l", ":bnext<CR>",opts)
keymap.set("n", "<leader>h", ":bprevious<CR>",opts)

-- ---------- 插件 ---------- ---
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>",opts)
