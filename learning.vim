let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/workspace/learning-poc
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 ui/node_modules/istanbul-reports/lib/html/annotator.js
badd +8 ui/src/media/bucket-list.js
badd +86 ui/src/media/create-visual-element.js
badd +42 ui/src/common/js-funcs.js
badd +1 ui/src/common/form-process.js
badd +40 ui/src/common/http-client.js
badd +0 ui/src/common/cache.js
badd +10 ui/package.json
badd +1 ui/src/actions/annotationActions.js
badd +1 ui/src/actions/index.js
badd +2 ui/src/actions/types.js
badd +42 ui/src/registerServiceWorker.js
badd +86 ui/src/reducers/annotationsReducer.js
badd +11 ui/src/index.js
badd +32 ui/src/components/Annotation/Annotation.js
badd +25 ui/src/components/Annotation/AnnotationStyles.css
badd +1 ui/src/components/package.json
badd +47 ui/src/style/main.css
badd +0 ui/src/common/start.js
argglobal
silent! argdel *
edit ui/src/common/start.js
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 112 - ((23 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
112
normal! 08|
lcd ~/workspace/learning-poc
tabedit ~/workspace/learning-poc/ui/src/media/create-visual-element.js
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 15 - ((14 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
15
normal! 08|
lcd ~/workspace/learning-poc
tabedit ~/workspace/learning-poc/ui/src/common/form-process.js
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 46 - ((25 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
46
normal! 0
tabnext 3
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOF
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
