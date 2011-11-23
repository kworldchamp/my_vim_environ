"========================================================================
" schema & color & font 관련
set guifontwide=gulimche

"set guifont=굴림:h11:cHANGEUL
set guifont=consolas:h11
colorscheme torte


"========================================================================
" toggling menu for GVIM
map <silent> <C-F2> :if &guioptions =~# 'T' <Bar>
                         \set guioptions-=T <Bar>
                         \set guioptions-=m <Bar>
                    \else <Bar>
                         \set guioptions+=T <Bar>
                         \set guioptions+=m <Bar>
                      \endif<CR>

"========================================================================
nmap <silent> ;s :so C:\Program Files\Vim\_vimrc<CR>

"========================================================================
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
" utf-8 화면 인코딩 상태일때 alt+enter가 안먹히니깐 꼼수 cp949로 임시로
set enc=cp949
nmap <silent> <A-CR> :call ToggleWindow()<CR>
set enc=utf-8
"---------Full Window end

"========================================================================
" 메뉴바의 한글이 깨져 나올때 아래두줄  삽입으로 해결하거나 vimrc 최상단에
" set enc=utf-8 입력하면 해결 가능
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
exec ":lang mes ko.UTF-8"
"imap <F2> :w<cr>:!"C:\Program Files\Internet explorer\iexplore.exe" Chaosrank.com<CR>

"========================================================================
"Start
map! <A-h>   <LEFT>
map! <A-j>   <DOWN>
map! <A-k>   <UP>
map! <A-l>   <RIGHT>
"End


"========================================================================
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

"========================================================================
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


"========================================================================
" Plugin : webpreview
" Command : ,bs(second) / ,bd(default)
let g:Default_WebBrowser='c:\Program Files\Internet Explorer\iexplore.exe'
let g:Second_WebBrowser='C:\Documents and Settings\MyHome\Local Settings\Application Data\Google\Chrome\Application\chrome.exe' 
let g:Default_WebDomain='http://chaosrank.com'
let g:Default_WebRoot='D:/www' 


"========================================================================
" 참고 사항
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

