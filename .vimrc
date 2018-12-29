syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

set number 			" 設定行號
set incsearch 			" 加強式尋找功能，在鍵入 patern 時會立即反應移動至目前鍵入之patern 上
set hlsearch 			" 尋找時，符合字串會反白表示
set laststatus=2 		" 設定status line
set autoread   
set clipboard=unnamed 		" 讓剪貼簿共用
set cursorline                  " 標示目前行
set showcmd  			" 顯示目前指令
set showmode 			" 顯示目前模式
set mouse=a 			" 讓滑鼠控制
set ai        			"自動對齊縮排"
set tabstop=4
set expandtab

"自動補齊" 
inoremap [ []<Esc>i
inoremap ( ()<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
inoremap < <><Esc>i
inoremap { {}<Esc>i

"自動補齊{}加換行"
"inoremap {<CR> {<CR>}<Esc>ko   


" 設定一個利用tab鍵來自動完成打字的功能，例如輸入'vari'再按下tab，自動會變成'variable'
function! TabAutoComplete()
  let col = col(".") - 1
    if !col || getline(".")[col - 1] !~ '\k'
      return "\<tab>"
    else
      return "\<c-n>"
  endif
endfunction

" 將上述funciton綁訂到tab鍵上
inoremap <tab> <c-r>=TabAutoComplete()<cr>

"lazy : -> \"
map \ :

nmap <c-a> ^
nmap <c-e> $



