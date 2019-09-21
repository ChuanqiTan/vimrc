" 基础配置
set nu
let g:loaded_comfortable_motion = 0
nmap <tab> :b#<cr>



call plug#begin('~/.vim_runtime/vim-plug-plugged')
" ========    vim-plug 插件管理    ======== 
" 项目文件浏览
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" 代码结构显示
Plug 'majutsushi/tagbar'
" 代码辅助
Plug 'davidhalter/jedi-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'ervandew/supertab'
Plug 'tell-k/vim-autopep8'
" Plug 'psf/black'  " need vim7+ with python 3.6+"
" 搜索
Plug 'wsdjeg/FlyGrep.vim'
" 美观
Plug 'godlygeek/tabular'
Plug 'vim-airline/vim-airline'
Plug 'yggdroot/indentline'
Plug 'kien/rainbow_parentheses.vim'
" ========================================
call plug#end()



" ACK
nmap <F3> :Ack


" NERDTree
nmap <F1> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "left"


" Tagbar
" brew install ctags-exuberant
" apt-get install exuberant-ctags
nmap <F2> :TagbarToggle<CR>


" CtrlP 
" 换用 ag，速度快的多
" 	brew install the_silver_searcher
" 	sudo apt-get install silversearcher-ag
" 	yum install the_silver_searcher
let g:ctrlp_custom_ignore = { \ 
    'dir':  '\v[\/]\.(git|hg|svn)$', \ 
    'file': '\v\.(exe|so|dll|pyc|o)$', \ 
    'link': 'some_bad_symbolic_links', \ 
}
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files.
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g "" --ignore *.pyc'
  " Ag is fast enough that CtrlP doesn't need to cache
  "let g:ctrlp_use_caching = 1   " ceph is very slow"
endif


" 彩虹括号, 自动显示
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


" indentLine, 缩进指示线
let g:indentLine_char='┆'
let g:indentLine_enabled = 1


" vim-autopep8
" pip install --upgrade autopep8
autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>


" Airline
let g:airline#extensions#tabline#enabled = 1


" jedi-vim
let g:jedi#goto_assignments_command = "<C-g>"


" FlyGrep
nmap <C-b> :FlyGrep<CR>

