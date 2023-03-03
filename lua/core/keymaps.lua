
-- 防止递归 or 静默使用
local opts = {noremap = true,silent = true}

-- 设置主键为空格
vim.g.mapleader = " "

local keymap = vim.keymap

--格式化代码
keymap.set('n',"<leader>fo","gg=G<C-o>",opts)

-- 
keymap.set('n',"Q",":q<CR>",opts)

--jj退出
keymap.set("i", "jj", "<ESC>",opts) 
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
keymap.set("n", "qf", "<C-w>q", opts)
--qc仅保留当前窗口
keymap.set("n", "qc", "<C-w>o", opts)

-- 调整窗口大小
keymap.set("n", "<up>", ":res +3<cr>", opts)
keymap.set("n", "<down>", ":res -3<cr>", opts)
keymap.set("n", "<left>", ":vertical resize+3<cr>", opts)
keymap.set("n", "<right>", ":vertical resize-3<cr>", opts)

-- Better window navigation
-- keymap.set("n", "<C-h>", "<C-w>h", opts)
-- keymap.set("n", "<C-j>", "<C-w>j", opts)
-- keymap.set("n", "<C-k>", "<C-w>k", opts)
-- keymap.set("n", "<C-l>", "<C-w>l", opts)

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
keymap.set("n", "H", "^",opts)
keymap.set("n", "L", "$",opts)

--删至 行首 行尾
keymap.set("n", "dH", "d0",opts)
keymap.set("n", "dL", "d$",opts)

--Y复制到行尾
keymap.set("n", "Y", "y$",opts)

-- 切换buffer
keymap.set("n", "bl", ":BufferLineCycleNext<CR>", opts)
keymap.set("n", "bh", ":BufferLineCyclePrev<CR>", opts)

-- open nvim-tree
keymap.set("n", "qw", ":NvimTreeToggle<CR>",opts)



-- debug
keymap.set("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint(); require'user.dap.dap-util'.store_breakpoints(true)<cr>", opts)
keymap.set("n", "<leader>dB", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input '[Condition] > ')<cr>", opts)
-- keymap("n", "<leader>dr", "lua require'dap'.repl.open()<cr>", opts)
keymap.set("n", "<F9>", "<cmd>lua require'dap'.run_last()<cr>", opts)
keymap.set('n', '<F10>', '<cmd>lua require"user.dap.dap-util".reload_continue()<CR>', opts)
keymap.set("n", "<F4>", "<cmd>lua require'dap'.terminate()<cr>", opts)
keymap.set("n", "<F5>", "<cmd>lua require'dap'.continue()<cr>", opts)
keymap.set("n", "<F6>", "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap.set("n", "<F7>", "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap.set("n", "<F8>", "<cmd>lua require'dap'.step_out()<cr>", opts)
-- keymap.set("n", "K", "<cmd>lua require'dapui'.eval()<cr>", opts)



