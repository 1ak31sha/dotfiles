let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/workspace/digital_dcl-ue
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +18 packages/bundle-interact/src/pages/InviteUsers/InviteUsers.tsx
badd +19 packages/bundle-interact/src/components/AddContactForm/AddContactForm.tsx
badd +42 packages/bundle-interact/src/components/AddContactForm/components/AddContactFormRow.tsx
badd +196 packages/bundle-interact/src/components/InviteAdminsForm/components/FormRow/FormRow.tsx
badd +3 ~/.config/nvim/UltiSnips/typescriptreact.snippets
badd +229 packages/bundle-interact/src/components/InviteAdminsForm/components/Form/Form.tsx
badd +22 packages/bundle-interact/src/components/InviteAdminsForm/components/Form/FormContainer.tsx
badd +7 packages/bundle-interact/src/redux/lookUpDetailsRedux/lookUpDetailsSelectors.ts
badd +46 packages/bundle-interact/src/redux/loggedInUserRedux/loggedInUserSelectors.ts
badd +5 packages/bundle-interact/src/utilities/authenticatedFetch/authFetchTypes.ts
badd +66 packages/bundle-interact/src/components/ContactCard/ContactCard.tsx
badd +0 packages/bundle-interact/src/common/constants/index.ts
badd +48 packages/bundle-interact/src/components/InviteAdminsForm/util/util.ts
badd +80 packages/bundle-interact/src/components/InviteAdminsForm/components/FormRow/__tests__/FormRow.tests.tsx
argglobal
%argdel
edit packages/bundle-interact/src/components/InviteAdminsForm/components/FormRow/FormRow.tsx
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
let s:l = 1 - ((0 * winheight(0) + 30) / 61)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit packages/bundle-interact/src/components/InviteAdminsForm/components/FormRow/__tests__/FormRow.tests.tsx
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
let s:l = 85 - ((51 * winheight(0) + 30) / 61)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
85
normal! 08|
tabedit packages/bundle-interact/src/components/InviteAdminsForm/components/Form/Form.tsx
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
setlocal nofen
silent! normal! zE
let s:l = 264 - ((38 * winheight(0) + 30) / 61)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
264
normal! 07|
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
