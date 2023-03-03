lua require("core.init")

"跳出括号
function! SkipPair() 
    if getline('.')[col('.') - 1] == ')' || getline('.')[col('.') - 1] == ']' || getline('.')[col('.') - 1] == '"' || getline('.')[col('.') - 1] == "'" || getline('.')[col('.') - 1] == '}'
        return "\<ESC>la"
    else
        return "\t"
    endif
endfunction
inoremap <TAB> <C-R>=SkipPair()<CR>

"多窗口编辑时, 临时放大某个窗口, 编辑完再切回原来的布局
function! ZoomToggle() abort
    if exists('t:zoomed') && t:zoomed
        execute t:zoom_winrestcmd
        let t:zoomed = 0
    else
        let t:zoom_winrestcmd = winrestcmd()
        resize
        vertical resize
        let t:zoomed = 1
    endif
endfunction
nnoremap <silent><Leader>z :call ZoomToggle()<CR>

" 书签图标
let g:bookmark_sign = ''


" F2 行号开关，用于鼠标复制代码用,为方便复制，用<F2>开启/关闭行号显示:
function! HideNumber() 
	if(&relativenumber == &number) 
		set relativenumber! number! 
	elseif(&number) 
		set number! 
	else 
		set relativenumber! 
	endif 
		set number? 
endfunc 
nnoremap <silent><F2> :call HideNumber()<CR>


