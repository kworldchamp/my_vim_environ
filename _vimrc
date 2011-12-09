"========================================================================
" vimrc 2011.11.23~
set enc=utf-8 " gvim 최상단 도구메뉴가 한글이 제대로 나오게 하기 위함
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

"화면 이동하기
map <c-h>   <c-w>h
map <c-j>   <c-w>j
map <c-k>   <c-w>k
map <c-l>   <c-w>l

"diffg 알트이동
map <S-Down> ]c
map <S-Up> [c
map <S-Right> :diffg<CR>

"map <F10> :!start c:\program files\internet explorer\iexplore.exe http://kr.engdic.yahoo.com/result.html?p=<cword><cr>
"<F1>컴파일후 실행까지.
map <F1> :!clear<CR> :w!<cr>:!gcc % -o %<.exe && ./%<.exe<cr>
"map <F2> :!clear<CR> :w!<CR>:!g++ -Wall % -o %<.exe && ./%<.exe<CR>
"map <F2> :!python %<CR>
map <F2> :QuickRun python<CR>
vmap <F2> :QuickRun python<CR>
"map! <F2> <C-o>:!python %<CR>
map! <F2> <C-o>:QuickRun  python<CR>

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
"주석처리
"map <F4> I/*<SPACE>by<SPACE><Esc>:r!whoami<CR>v$dkwwllpA<SPACE><C-R>=strftime("%Y.%m.%d")<CR><Esc>Jxi<CR><Esc>dbi<SPACE><SPACE><Esc>A */<Esc>

"========================================================================
" Plugin : Vundle
" Command : BundleSearch,  ...etc..
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"budle setting start
set nocompatible               " be iMproved
filetype off                   " required!

if has("gui_running")
    set rtp+=$vim/vimfiles/bundle/vundle/
else
    set rtp+=~/.vim/vimfiles/bundle/vundle/
endif
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
Bundle 'FuzzyFinder'
Bundle 'surround.vim'
Bundle 'repeat.vim'
Bundle 'L9'
Bundle 'HTML-AutoCloseTag'
Bundle 'The-NERD-tree'
Bundle 'The-NERD-Commenter'
Bundle 'a.vim'
Bundle 'AutoComplPop'
Bundle 'AutoClose'
Bundle 'matchit.zip'
Bundle 'matchparenpp'
Bundle 'taglist-plus'
Bundle 'taglist.vim'
Bundle 'tohtml_wincp'
Bundle 'VimExplorer'
Bundle 'Vimball'
Bundle 'winmanager'
Bundle 'runzip'
Bundle 'Toggle'
Bundle 'TaskList.vim'
Bundle 'Gundo'
Bundle 'pep8'
Bundle 'python_match.vim'
Bundle 'c.vim'
Bundle 'EasyGrep'
Bundle 'grep.vim'
Bundle 'RunView'
Bundle 'closetag.vim'
Bundle 'pyte'

" for kk custom
Bundle "kk"

"Bundle 'snipMate' " 기존 snipMate의 업데이트 문제로, 이것을 아래 fork된 프로젝트 사항으로 대체
Bundle "git://github.com/honza/snipmate-snippets.git"
Bundle "git://github.com/MarcWeber/vim-addon-mw-utils.git"
Bundle "git://github.com/tomtom/tlib_vim.git"
Bundle "git://github.com/garbas/vim-snipmate.git"

" schema
"Bundle 'jpo/vim-railscasts-theme'
"Bundle 'altercation/vim-colors-solarized'

" original repos on github
"Bundle 'robhudson/snipmate_for_django'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'othree/html5.vim'
Bundle 'kevinw/pyflakes-vim'
"Bundle 'ujihisa/quickrun' "original version
Bundle 'thinca/vim-quickrun'
Bundle 'xolox/vim-shell'
Bundle 'xolox/vim-session'
"Bundle 'xolox/vim-easytags'
Bundle 'kien/rainbow_parentheses.vim'
"html tag매칭시에 색깔 표시 됨(MatchTag)
Bundle 'gregsexton/MatchTag'    

" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
"Bundle 'rails.vim'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required! 
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"bundle setting end

"========================================================================
" Plugin : matchit.zip
" Command : 
"========================================================================
"let loaded_matchit = 1 "이렇게 하면 불러오기 안함
" { }, ( ) %키 하나로 매칭되게 하기 위해서 추가 해줌.
autocmd FileType htmldjango   let b:match_words='<:>,<\@<=[ou]l\>[^>]*\%(>\|$\):<\@<=li\>:<\@<=/[ou]l>,<\@<=dl\>[^>]*\%(>\|$\):<\@<=d[td]\>:<\@<=/dl>,<\@<=\([^/][^ \t>]*\)[^>]*\%(>\|$\):<\@<=/\1>,(:),{:}'


" Plugin : rainbow_parentheses
" Command : 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" C나 java에서 사용하기 적합한듯하다. html highlight에서 제대로 적용 안됨
"au VimEnter * RainbowParenthesesToggle
""au VimEnter * RainbowParenthesesLoadRound    " (), the default when toggling
"au VimEnter * RainbowParenthesesLoadSquare   " []
"au VimEnter * RainbowParenthesesLoadBraces   " {}
"au VimEnter * RainbowParenthesesLoadChevrons " <>

"========================================================================
" Plugin : RunView
" Command : 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:runview_filtcmd="python"

"========================================================================
" Plugin : pep8
" Command : 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:pep8_map='<leader>8'

"========================================================================
" Plugin : Gundo
" Command : GundoToggle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" buftype으로 세이브 revision 목록 확인 가능
map <leader>g :GundoToggle<CR>

"========================================================================
" Plugin : vim-easymotion
" Command : 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:EasyMotion_leader_key = '<Leader>'
let g:EasyMotion_leader_key = '-'
let g:EasyMotion_keys = '1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
"let g:EasyMotion_mapping_w = '-w'
"let g:EasyMotion_mapping_b = '-b'

"========================================================================
" Plugin : SnipMate
" Command : 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"snipmate_for_django
autocmd FileType python set ft=python.django " For SnipMate
" For SnipMate, acp(AutocomplPop)/plugin 수정#htmldjango 추가, html5 plugin syntax 수정#syntax/htmldjango.vim 내용을 붙여넣기
autocmd FileType html   set ft=htmldjango 

"========================================================================
" Plugin : AutocomplPop
" Command : 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" omnifunc관련 자동으로 로드 되기 위한 ft plugin on 과 indent등
filetype plugin indent on
filetype plugin on

"========================================================================
" Plugin : pyflakes.vim
" Command : 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:pyflakes_use_quickfix=1

"========================================================================
" Plugin : FuzzyFinder
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
" Command :
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

"========================================================================
" python 에서 ctags 활용위한 설정
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
" schema & color & font 관련
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set laststatus=2
"set statusline=%<%F\ (%Y)\ [%1*%M%*%n%R%H]\ %=%8o'0x%04B\ %14(%c%V,%l/%LL%)
"set statusline=%<%F%h%m%r%h%w%y\ %{strftime(\"%d/%m/%Y-%H:%M\")}%=\ col:%c%V\ ascii:%b\ pos:%o\ lin:%l\,%L\ %P
"colorscheme koehler

" Tab schema
hi TabLineFill    ctermfg=black
hi TabLineSel     ctermbg=blue
hi PmenuSel ctermbg=blue

" MatchParen schme by kwc
hi MatchParen term=reverse cterm=bold ctermbg=Blue guibg=Blue ctermfg=1  guifg=red

set ai ts=4 sts=4 et sw=4 "python standard tab format
set nu
set ignorecase

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,ucs-bom,korea,euc-kr,default
"set fileformat=dos
"set fileformats=unix,dos
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
"if $LANG[0] == 'k' && $LANG[1] == 'o'
    "set fileencoding=korea
"endif


""" ========================================================
""" 터미널에 따른 설정 : Xterm이면 16컬러 사용
""" ========================================================
if &term =~ "xterm-debian" || &term =~ "xterm-xfree86"
    set t_Co=16
    set t_Sf=^[[3%dm
    set t_Sb=^[[4%dm
    set t_kb
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

if has("autocmd") "이전 작업줄 표시 http://kldp.org/node/28046 에서..
    " When editing a file, always jump to the last cursor position
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line ("'\"") <= line("$") |
                \   exe "normal g'\"" |
                \ endif
endif

"========================================================================
"minibufexpl.vim 로드 안되게 플러그인 자동로드 하지 않은다음(set noloadplugins) minibufexpl만 제외한 플러그인로드
"set noloadplugins
"runtime! plugin/[^\<minibufexpl\>]*.vim

" 이 처럼도 가능
if !has("gui_running")
    au TabEnter * exec ":CMiniBufExplorer"
    set cursorline
    "map a gt //알트(Alt) 입력..echo "a" | awk ' { printf "%c", 27} ' > A27.txt 이걸 이용
    "map <Char-27>a gt 알트 키코드 char-27
    "========================
    "map! <Char-27>h   <LEFT>
    "map! <Char-27>j   <DOWN>
    "map! <Char-27>k   <UP>
    "map! <Char-27>l   <RIGHT>
    "========================
    inoremap <silent> H <LEFT>
    inoremap <silent> L <RIGHT>
    inoremap <silent> J <DOWN>
    inoremap <silent> K <UP>
endif

function! MyExecute(cmd)
    let tmpnam=tempname()
    let cmdstr=expand(a:cmd)
    exec "!".a:cmd." 2>&1| tee ".tmpnam
    if bufexists("ResultWindow") && bufwinnr("ResultWindow") > 0
        exe bufwinnr("ResultWindow")."wincmd w"
        set ma noro
    else
        bo 1split
        enew
        setlocal bt=nofile
        file ResultWindow
    endif
    exec "0"
    exec "normal dG"
    exec "r ".tmpnam
    exec "silent !rm ".tmpnam
    redraw!
endfunction
