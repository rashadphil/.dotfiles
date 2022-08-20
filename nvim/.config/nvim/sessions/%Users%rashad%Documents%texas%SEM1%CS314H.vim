let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Documents/texas/SEM1/CS314H
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +56 prog7/src/main/java/assignment/WebCrawler.java
badd +2 ~/Documents/texas/SEM1/CS314H/prog7/src/main/java/assignment/CrawlingMarkupHandler.java
badd +70 ~/Documents/texas/SEM1/CS314H/prog7/src/main/java/assignment/WebIndex.java
badd +53 ~/Documents/texas/SEM1/CS314H/prog7/src/main/java/assignment/WebQueryEngine.java
badd +253 ~/Documents/texas/SEM1/CS314H/prog7/src/main/java/assignment/WebServer.java
badd +1 ~/Documents/texas/SEM1/CS314H/prog7/src/main/java/assignment/Page.java
badd +0 ~/Documents/texas/SEM1/CS314H/prog7_turnin/Philizaire_Assignment7_WebCrawler.pdf
argglobal
%argdel
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
