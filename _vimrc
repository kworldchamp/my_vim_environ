"========================================================================
" vimrc 2011.11.23~

"========================================================================
" testing...
"au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
let g:SimpleJsIndenter_BriefMode = 1
"let g:js_indent ="C:\Program Files\Vim\vimfiles\indent\javascript.vim"
let g:js_indent_log = 0

"========================================================================
" MAPPING
map <leader>fj :set ft=javascript<cr>
map <leader>fh :set ft=html<cr>

map th :tabprev<CR>
map tl :tabnext<CR>
map tn :tabnew<CR>
map td :tabclose<CR>

map <Tab> gt
map <S-Tab> gT
vmap <Tab> >gv
vmap <S-Tab> <gv

"ȭ�� �̵��ϱ�
map <c-h>   <c-w>h
map <c-j>   <c-w>j
map <c-k>   <c-w>k
map <c-l>   <c-w>l

"diffg ��Ʈ�̵�
map <S-Down> ]c
map <S-Up> [c
map <S-Right> :diffg<CR>

"map <F10> :!start c:\program files\internet explorer\iexplore.exe http://kr.engdic.yahoo.com/result.html?p=<cword><cr>
"<F1>�������� �������.
map <F1> :!clear<CR> :w!<cr>:!gcc % -o %<.exe && ./%<.exe<cr>
"map <F2> :!clear<CR> :w!<CR>:!g++ -Wall % -o %<.exe && ./%<.exe<CR>

"�����Ͻ� �������ڵ� �ٷ� �������ֱ��~
nmap <F10> :set makeprg=gcc\ %<CR> :w<CR> :make <CR> :cw 7<CR> 
"map <F3> [{v]}zf
map <F3> :WMToggle<CR>

"map <F4> :21vs .<CR>:set nonumber<CR>
map <F4> :NERDTreeToggle<CR>
vmap <F5> :norm i//<CR>
vmap <F6> :norm xx<CR>
vmap nmap nnoremap

map <F12> :!clear<CR> :!./%<.exe<CR>
"<F4> �ּ�ó��
"map <F4> I/*<SPACE>by<SPACE>KWC<SPACE><C-R>=strftime("%Y.%m.%d")<CR><LF><SPACE><SPACE><SPACE><SPACE><Esc>A<SPACE>*/<Esc>
"map <F4> zo

"map <F6> ^Ww
"map <F8> [i
"map <F9> :! gcc % -o % <<CR>
"�ּ�ó��
"map <F4> I/*<SPACE>by<SPACE><Esc>:r!whoami<CR>v$dkwwllpA<SPACE><C-R>=strftime("%Y.%m.%d")<CR><Esc>Jxi<CR><Esc>dbi<SPACE><SPACE><Esc>A */<Esc>

"========================================================================
" Plugin : AutocomplPop
" Command : 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" omnifunc���� �ڵ����� �ε� �Ǳ� ���� ft plugin on �� indent��
filetype plugin indent on
filetype plugin on

"========================================================================
" Plugin : pyflakes.vim
" Command : 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:pyflakes_use_quickfix=1

"========================================================================
" Plugin : pyflakes.vim
" Command : 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <leader>fb     :FufBuffer<CR>
nnoremap <silent> <leader>fa     :FufCoverageFile<CR>
nnoremap <silent> <leader>ff :FufFile<CR>
nnoremap <silent> <leader>fd :FufDir<CR>

"========================================================================
" Plugin : closetag.vim
" Command : 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:closetag_html_style=1
"au Filetype html,xml,xsl source ~/.vim/scripts/closetag.vim 

"========================================================================
" Plugin : taglist.vim
" Command : BundleSearch,  ...etc..
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Taglist�� ���� �������߰�
nnoremap <silent> <F7> :TlistUpdate<CR> 
nnoremap <silent> <F8> :Tlist<CR> 
nnoremap <silent> <F9> :TlistSync<CR> 
"��ó http://blog.naver.com/agfe2/80000756360 
"F7 ~ F8 Ű�� ���ν�Ų��.
"F8 �� ������ tag ������ ������. (��� )
"���� Ű������ġ�� �±׸���Ʈ�� ������ ������ ���ϴ� ��ġ���� F9 �� ������.

"$VIM ���� �±������� ��ġ�� �˻��ϱ����ؼ� �������� �߰�
set tags=.\tags,..\tags,
"set tags=./tags,tags,../tags,

"========================================================================
" python ���� ctags Ȱ������ ����
python << EOF
import os
import sys
import vim
for p in sys.path:
    if os.path.isdir(p):
        vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))
EOF
set tags+=$HOME/.vim/tags/python.ctags

"========================================================================
" Plugin : Vundle
" Command : BundleSearch,  ...etc..
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"budle setting start
set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=$vim/vimfiles/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"Bundle 'fugitive.vim'
Bundle 'FuzzyFinder'
Bundle 'surround.vim'
Bundle 'repeat.vim'
Bundle 'L9'
Bundle 'HTML-AutoCloseTag'
Bundle 'html5.vim'
Bundle 'The-NERD-tree'
Bundle 'The-NERD-Commenter'
Bundle 'a.vim'
Bundle 'AutoComplPop'
Bundle 'AutoClose'
Bundle 'matchit.zip'
Bundle 'matchparenpp'
Bundle 'snipMate'
Bundle 'taglist-plus'
Bundle 'taglist.vim'
Bundle 'tohtml_wincp'
Bundle 'VimExplorer'
Bundle 'Vimball'
Bundle 'winmanager'
Bundle 'pyflakes.vim'
Bundle 'runzip'
Bundle 'Toggle'
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
"Bundle 'rails.vim'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required! 
"bundle setting end

"========================================================================
" schema & color & font ����
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set laststatus=2
"set statusline=%<%F\ (%Y)\ [%1*%M%*%n%R%H]\ %=%8o'0x%04B\ %14(%c%V,%l/%LL%)
"set statusline=%<%F%h%m%r%h%w%y\ %{strftime(\"%d/%m/%Y-%H:%M\")}%=\ col:%c%V\ ascii:%b\ pos:%o\ lin:%l\,%L\ %P

" Tab schema
hi TabLineFill    ctermfg=black
hi TabLineSel     ctermbg=blue
hi PmenuSel ctermbg=blue

set ai ts=4 sts=4 et sw=4 "python standard tab format
set nu							  
set ignorecase

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,ucs-bom,korea,euc-kr,default
"set fileformat=dos
"set fileformats=unix,dos
"set term=ansi
set nocompatible    " Vim ����Ʈ ��ɵ��� �����
set tabstop=4       " <Tab> ����
set backspace=2     " ���� ��忡�� �齺���̽��� ��� ���
set autoindent      " �ڵ� �鿩����
set cindent         " C ��� �ڵ� �鿩����
set smartindent     " ���� �ڵ� �鿩����
"set textwidth=80    " 76��° ĭ�� �Ѿ�� �ڵ����� �� �ٲ�
set wrap
set nowrapscan      " ã�⿡�� ������ �� ���� �̸��� ����Ͽ� ã�� ����
set nobackup       " ��������� ������ ����
"set novisualbell    " ���־� ����� ������� ����
set nojoinspaces    " J ��ɾ�� ���� ���� �� ��ħǥ �ڿ� ��ĭ�� ��
set ruler           " ����ǥ���ٿ� Ŀ�� ��ġ�� ������
set shiftwidth=4    " �ڵ� �鿩���� ����
"set keywordprg=edic    " K�� ������ �� ������ ��ɾ�
set showcmd         " (�κ�����) ��ɾ ���¶��ο� ������
set showmatch       " ��ġ�Ǵ� ��ȣ�� �ݴ����� ������
"set ignorecase      " ã�⿡�� ��/�ҹ��ڸ� �������� ����
set incsearch       " ���������� ã��
set autowrite       " :next �� :make ���� ��ɸ� �Է��ϸ� �ڵ����� ����
set title                       " Ÿ��Ʋ�ٿ� ���� �������� ������ ǥ��
"set number


""" ========================================================
""" ���� ���ڵ��� �ѱ���� ����
""" ========================================================
"if $LANG[0] == 'k' && $LANG[1] == 'o'
	"set fileencoding=korea
"endif


""" ========================================================
""" �͹̳ο� ���� ���� : Xterm�̸� 16�÷� ���
""" ========================================================
if &term =~ "xterm-debian" || &term =~ "xterm-xfree86"
	set t_Co=16
	set t_Sf=^[[3%dm
	set t_Sb=^[[4%dm
	set t_kb=
	fixdel
endif


""" ========================================================
""" ���� ������� ���
""" ========================================================
if has("syntax")
	syntax on
endif


""" ========================================================
""" GUI ���� ������ ���
""" ========================================================
if has("gui_running")
	set visualbell        " ���־� ��� ���
	set hlsearch          " ã�� �ܾ ���̶�����
	set guifontset=-*-fixed-medium-r-normal--14-*-75-75-*-70-iso8859-1,-*-gulim-medium-r-normal--14-140-75-75-*-140-ksc5601.1987-0
endif

" ---- language-env end DON'T MODIFY THIS LINE!
set background=dark
syntax on
""" set fe=korea
"set binary
""" set ts=8
if !exists("autocommands_loaded")
	let autocommands_loaded = 1
	augroup C
		autocmd BufRead *.c set cindent
	augroup END
endif


hi Comment ctermfg=DarkCyan
hi Statement ctermfg=DarkGreen
hi Label ctermfg=DarkGreen
hi Conditional ctermfg=DarkGreen
hi String ctermfg=DarkYellow
hi Repeat ctermfg=DarkYellow
hi Format ctermfg=DarkYellow
hi Character ctermfg=DarkYellow
hi Special ctermfg=DarkYellow
hi Constant ctermfg=DarkRed

if has("autocmd") "���� �۾��� ǥ�� http://kldp.org/node/28046 ����..
	" When editing a file, always jump to the last cursor position
	autocmd BufReadPost *
				\ if line("'\"") > 0 && line ("'\"") <= line("$") |
				\   exe "normal g'\"" |
				\ endif
endif

"========================================================================
"minibufexpl.vim �ε� �ȵǰ� �÷����� �ڵ��ε� ���� ��������(set noloadplugins) minibufexpl�� ������ �÷����ηε�
"set noloadplugins
"runtime! plugin/[^\<minibufexpl\>]*.vim

" �� ó���� ����
"au TabEnter * exec ":CMiniBufExplorer"

