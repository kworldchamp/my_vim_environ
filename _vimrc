""" �⺻���� ������
""" ========================================================


"I have had problems with this is the past, even with the matchit plugin. The way I solved it was to modify b:match_words on xml-type files. Here is the relevant section from my .vimrc:
"autocmd FileType html let b:match_words = '<\(\w\w*\):</\1,{:}'
"autocmd FileType xhtml let b:match_words = '<\(\w\w*\):</\1,{:}'
"autocmd FileType xml let b:match_words = '<\(\w\w*\):</\1,{:}'
"Try it out, see if it helps any.

"Vim 7: Turning completion on
"Omni completion isn't automatically turned on for Vim 7, and it's super useful if you code in CSS or HTML.
"In your vimrc you can add following to turn completion on:
"autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP
"autocmd FileType c set omnifunc=ccomplete#Complete
"You complete things with CTRL-X O.
"CSS completion in action:

map <leader>fj :set ft=javascript<cr>
map <leader>fh :set ft=html<cr>
"au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
let g:SimpleJsIndenter_BriefMode = 1
"let g:js_indent ="C:\Program Files\Vim\vimfiles\indent\javascript.vim"
let g:js_indent_log = 0
set ignorecase

map th :tabprev<CR>
map tl :tabnext<CR>
map tn :tabnew<CR>
map td :tabclose<CR>
filetype plugin indent on
filetype plugin on


set ai ts=4 sts=4 et sw=4 "python standard tab format


let g:pyflakes_use_quickfix=1
"minibufexpl.vim �ε� �ȵǰ� �÷����� �ڵ��ε� ���� ��������(set noloadplugins) minibufexpl�� ������ �÷����ηε�
"set noloadplugins
"runtime! plugin/[^\<minibufexpl\>]*.vim

hi TabLineFill    ctermfg=black
hi TabLineSel     ctermbg=blue
hi PmenuSel ctermbg=blue

nnoremap <silent> <leader>fb     :FufBuffer<CR>
nnoremap <silent> <leader>fa     :FufCoverageFile<CR>
nnoremap <silent> <leader>ff :FufFile<CR>
nnoremap <silent> <leader>fd :FufDir<CR>

"nmap <silent> <F2> :w<cr>:!"C:\Program Files\Internet explorer\iexplore.exe" Chaosrank.com<CR>
imap <F2> :w<cr>:!"C:\Program Files\Internet explorer\iexplore.exe" Chaosrank.com<CR>
map <Tab> gt
map <S-Tab> gT
vmap <Tab> >gv
vmap <S-Tab> <gv

" toggling menu for GVIM
map <silent> <C-F2> :if &guioptions =~# 'T' <Bar>
                         \set guioptions-=T <Bar>
                         \set guioptions-=m <Bar>
                    \else <Bar>
                         \set guioptions+=T <Bar>
                         \set guioptions+=m <Bar>
                      \endif<CR>
nmap <silent> ;s :so C:\Program Files\Vim\_vimrc<CR>

"----- Full Window start
"�Ʒ� ������ kwc�� ��ũ��Ʈ ¥�� ��Ʈ+���� �ϳ��θ� �ִ��ּ�ȭ �� �����ϰ� ���� ��
"map <A-CR> :simalt ~x<CR>
"map <C-CR> :simalt ~r<CR>
"����� ȭ�� �ִ�ȭ
"au GUIEnter * simalt ~x
let g:FullWindow=0
function! ToggleWindow()
   if g:FullWindow==0
      let g:FullWindow=1
	  :simalt ~x
   else
      let g:FullWindow=0
	  :simalt ~r
   endif
endfunction
nmap <silent> <A-CR> :call ToggleWindow()<CR>
"---------Full Window end

"========================
map! <A-h>   <LEFT>
map! <A-j>   <DOWN>
map! <A-k>   <UP>
map! <A-l>   <RIGHT>
"========================



let g:closetag_html_style=1
"au Filetype html,xml,xsl source ~/.vim/scripts/closetag.vim 

"set fileencodings=euc-kr
"set fileformat=dos
"set fileformats=unix,dos
"set encoding=cp949

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
if $LANG[0] == 'k' && $LANG[1] == 'o'
	set fileencoding=korea
endif


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

set nu							  
if has("autocmd") "���� �۾��� ǥ�� http://kldp.org/node/28046 ����..
	" When editing a file, always jump to the last cursor position
	autocmd BufReadPost *
				\ if line("'\"") > 0 && line ("'\"") <= line("$") |
				\   exe "normal g'\"" |
				\ endif
endif


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
"�ּ�ó��"""""""""""""""""""""""""""""""""""""""""""""""""
"map <F4> I/*<SPACE>by<SPACE><Esc>:r!whoami<CR>v$dkwwllpA<SPACE><C-R>=strftime("%Y.%m.%d")<CR><Esc>Jxi<CR><Esc>dbi<SPACE><SPACE><Esc>A */<Esc>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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

"=======================
"ȭ�� �̵��ϱ�
map <c-h>   <c-w>h
map <c-j>   <c-w>j
map <c-k>   <c-w>k
map <c-l>   <c-w>l
"========================
"
"diffg ��Ʈ�̵�
map <S-Down> ]c
map <S-Up> [c
map <S-Right> :diffg<CR>




"set guifont=����:h11:cHANGEUL
set guifont=consolas:h11
colorscheme torte

source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction


let g:Default_WebBrowser='c:\Program Files\Internet Explorer\iexplore.exe'
let g:Second_WebBrowser='C:\Documents and Settings\MyHome\Local Settings\Application Data\Google\Chrome\Application\chrome.exe' 
let g:Default_WebDomain='http://chaosrank.com'
let g:Default_WebRoot='D:/www' 

"set laststatus=2
"set statusline=%<%F\ (%Y)\ [%1*%M%*%n%R%H]\ %=%8o'0x%04B\ %14(%c%V,%l/%LL%)
"set statusline=%<%F%h%m%r%h%w%y\ %{strftime(\"%d/%m/%Y-%H:%M\")}%=\ col:%c%V\ ascii:%b\ pos:%o\ lin:%l\,%L\ %P
set enc=utf-8
set fenc=utf-8
