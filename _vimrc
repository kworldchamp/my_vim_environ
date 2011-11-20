""" 기본적인 설정들
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
"minibufexpl.vim 로드 안되게 플러그인 자동로드 하지 않은다음(set noloadplugins) minibufexpl만 제외한 플러그인로드
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
"아래 두줄을 kwc가 스크립트 짜서 알트+엔터 하나로만 최대최소화 다 가능하게 했음 ㅋ
"map <A-CR> :simalt ~x<CR>
"map <C-CR> :simalt ~r<CR>
"실행시 화면 최대화
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
set nocompatible    " Vim 디폴트 기능들을 사용함
set tabstop=4       " <Tab> 간격
set backspace=2     " 삽입 모드에서 백스페이스를 계속 허용
set autoindent      " 자동 들여쓰기
set cindent         " C 언어 자동 들여쓰기
set smartindent     " 역시 자동 들여쓰기
"set textwidth=80    " 76번째 칸을 넘어가면 자동으로 줄 바꿈
set wrap
set nowrapscan      " 찾기에서 파일의 맨 끝에 이르면 계속하여 찾지 않음
set nobackup       " 백업파일을 만들지 않음
"set novisualbell    " 비주얼벨 기능을 사용하지 않음
set nojoinspaces    " J 명령어로 줄을 붙일 때 마침표 뒤에 한칸만 띔
set ruler           " 상태표시줄에 커서 위치를 보여줌
set shiftwidth=4    " 자동 들여쓰기 간격
"set keywordprg=edic    " K를 눌렀을 때 실행할 명령어
set showcmd         " (부분적인) 명령어를 상태라인에 보여줌
set showmatch       " 매치되는 괄호의 반대쪽을 보여줌
"set ignorecase      " 찾기에서 대/소문자를 구별하지 않음
set incsearch       " 점진적으로 찾기
set autowrite       " :next 나 :make 같은 명령를 입력하면 자동으로 저장
set title                       " 타이틀바에 현재 편집중인 파일을 표시
"set number


""" ========================================================
""" 파일 인코딩을 한국어로 설정
""" ========================================================
if $LANG[0] == 'k' && $LANG[1] == 'o'
	set fileencoding=korea
endif


""" ========================================================
""" 터미널에 따른 설정 : Xterm이면 16컬러 사용
""" ========================================================
if &term =~ "xterm-debian" || &term =~ "xterm-xfree86"
	set t_Co=16
	set t_Sf=^[[3%dm
	set t_Sb=^[[4%dm
	set t_kb=
	fixdel
endif


""" ========================================================
""" 문법 강조기능 사용
""" ========================================================
if has("syntax")
	syntax on
endif


""" ========================================================
""" GUI 모드로 실행할 경우
""" ========================================================
if has("gui_running")
	set visualbell        " 비주얼벨 기능 사용
	set hlsearch          " 찾는 단어를 하이라이팅
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
if has("autocmd") "이전 작업줄 표시 http://kldp.org/node/28046 에서..
	" When editing a file, always jump to the last cursor position
	autocmd BufReadPost *
				\ if line("'\"") > 0 && line ("'\"") <= line("$") |
				\   exe "normal g'\"" |
				\ endif
endif


"map <F10> :!start c:\program files\internet explorer\iexplore.exe http://kr.engdic.yahoo.com/result.html?p=<cword><cr>
"<F1>컴파일후 실행까지.
map <F1> :!clear<CR> :w!<cr>:!gcc % -o %<.exe && ./%<.exe<cr>
"map <F2> :!clear<CR> :w!<CR>:!g++ -Wall % -o %<.exe && ./%<.exe<CR>

"컴파일시 에러난코드 바로 연결해주기다~
nmap <F10> :set makeprg=gcc\ %<CR> :w<CR> :make <CR> :cw 7<CR> 
"map <F3> [{v]}zf
map <F3> :WMToggle<CR>

"map <F4> :21vs .<CR>:set nonumber<CR>
map <F4> :NERDTreeToggle<CR>
vmap <F5> :norm i//<CR>
vmap <F6> :norm xx<CR>
vmap nmap nnoremap

map <F12> :!clear<CR> :!./%<.exe<CR>
"<F4> 주석처리
"map <F4> I/*<SPACE>by<SPACE>KWC<SPACE><C-R>=strftime("%Y.%m.%d")<CR><LF><SPACE><SPACE><SPACE><SPACE><Esc>A<SPACE>*/<Esc>
"map <F4> zo

"map <F6> ^Ww
"map <F8> [i
"map <F9> :! gcc % -o % <<CR>
"주석처리"""""""""""""""""""""""""""""""""""""""""""""""""
"map <F4> I/*<SPACE>by<SPACE><Esc>:r!whoami<CR>v$dkwwllpA<SPACE><C-R>=strftime("%Y.%m.%d")<CR><Esc>Jxi<CR><Esc>dbi<SPACE><SPACE><Esc>A */<Esc>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Taglist를 위해 다음행추가
nnoremap <silent> <F7> :TlistUpdate<CR> 
nnoremap <silent> <F8> :Tlist<CR> 
nnoremap <silent> <F9> :TlistSync<CR> 
"출처 http://blog.naver.com/agfe2/80000756360 
"F7 ~ F8 키를 맵핑시킨다.
"F8 을 누르면 tag 파일이 열린다. (토글 )
"현재 키보드위치의 태그리스트를 보려면 파일의 원하는 위치에서 F9 를 누른다.

"$VIM 에서 태그파일의 위치를 검사하기위해서 다음줄을 추가
set tags=.\tags,..\tags,
"set tags=./tags,tags,../tags,

"=======================
"화면 이동하기
map <c-h>   <c-w>h
map <c-j>   <c-w>j
map <c-k>   <c-w>k
map <c-l>   <c-w>l
"========================
"
"diffg 알트이동
map <S-Down> ]c
map <S-Up> [c
map <S-Right> :diffg<CR>




"set guifont=굴림:h11:cHANGEUL
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
