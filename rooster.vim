let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/workspace/digital_dcl-ue
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +174 ~/workspace/dotfiles/init.vim
badd +169 ~/workspace/dotfiles/config.fish
badd +9 ~/workspace/dotfiles/.tmux.conf
badd +33 packages/bundle-interact/src/redux/myAccountRedux/myAccountActions.ts
badd +25 packages/bundle-interact/src/api/index.ts
badd +25 packages/bundle-interact/src/components/ModalRedirectToMyAccount/ModalRedirectToMyAccount.tsx
badd +705 packages/bundle-interact/src/config/analytics.json
badd +221 packages/bundle-interact/src/pages/UserProfile/UserProfile.tsx
badd +281 packages/bundle-interact/src/pages/InviteUsers/InviteProductUsers.tsx
badd +1 lerna.json
badd +1 packages/bundle-interact/package.json
badd +1 package.json
badd +17 .prettierignore
badd +2 packages/bundle-interact/src/types/globals.ts
badd +52 packages/bundle-interact/src/common/analytic/analyticTypes.ts
badd +11 .github/pull_request_template.md
badd +1 packages/bundle-interact/src/common/analytic/__mocks__/analyticsConfig.ts
badd +7 packages/bundle-interact/src/common/analytic/utilities/dataLayer.ts
badd +70 packages/bundle-interact/src/common/analytic/targets/baseTarget.ts
badd +6 packages/bundle-interact/src/common/analytic/targets/launchTarget.ts
badd +1 packages/bundle-interact/src/common/analytic/targets/mockTarget.ts
badd +7 packages/bundle-interact/src/common/analytic/targets/targetFactory.ts
badd +22 packages/bundle-interact/src/store.ts
badd +1 packages/bundle-interact/src/main.tsx
badd +646 packages/bundle-interact/CHANGELOG.md
badd +8 packages/bundle-interact/src/common/analytic/useAnalyticDispatch.ts
badd +13 packages/bundle-interact/src/common/analytic/eventMapCreator.ts
badd +1 packages/bundle-interact/src/utilities/resolveObjectPaths.ts
argglobal
%argdel
edit packages/bundle-interact/src/components/ModalRedirectToMyAccount/ModalRedirectToMyAccount.tsx
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
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
let s:l = 42 - ((24 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
42
normal! 04|
tabedit packages/bundle-interact/package.json
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 22 + 20) / 40)
exe '2resize ' . ((&lines * 13 + 20) / 40)
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
let s:l = 26 - ((21 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
26
normal! 012|
lcd ~/workspace/digital_dcl-ue
wincmd w
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
lcd ~/workspace/digital_dcl-ue
wincmd w
exe '1resize ' . ((&lines * 22 + 20) / 40)
exe '2resize ' . ((&lines * 13 + 20) / 40)
tabedit ~/workspace/digital_dcl-ue/packages/bundle-interact/src/common/analytic/targets/mockTarget.ts
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 22 + 20) / 40)
exe '2resize ' . ((&lines * 13 + 20) / 40)
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
let s:l = 23 - ((18 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
23
normal! 07|
lcd ~/workspace/digital_dcl-ue
wincmd w
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
lcd ~/workspace/digital_dcl-ue
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 22 + 20) / 40)
exe '2resize ' . ((&lines * 13 + 20) / 40)
tabedit ~/workspace/digital_dcl-ue/packages/bundle-interact/src/utilities/resolveObjectPaths.ts
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
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
let s:l = 1 - ((0 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/workspace/digital_dcl-ue
tabedit ~/workspace/digital_dcl-ue/packages/bundle-interact/src/common/analytic/eventMapCreator.ts
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
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
let s:l = 8 - ((7 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 0
lcd ~/workspace/digital_dcl-ue
tabedit ~/workspace/digital_dcl-ue/packages/bundle-interact/src/common/analytic/targets/launchTarget.ts
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
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
let s:l = 12 - ((11 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
12
normal! 027|
lcd ~/workspace/digital_dcl-ue
tabedit ~/workspace/digital_dcl-ue/packages/bundle-interact/src/store.ts
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
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
let s:l = 16 - ((12 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 02|
lcd ~/workspace/digital_dcl-ue
tabedit ~/workspace/digital_dcl-ue/packages/bundle-interact/src/common/analytic/targets/targetFactory.ts
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
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
let s:l = 7 - ((6 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 0
lcd ~/workspace/digital_dcl-ue
tabnext 3
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOFcI
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
