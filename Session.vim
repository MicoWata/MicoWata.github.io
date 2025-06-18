let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/projects/hello/lib/widgets
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +15 ~/projects/hello/lib/main.dart
badd +1 ~/projects/hello/Session.vim
badd +59 term://~/projects/hello//320759:/usr/bin/zsh
badd +20 bar.dart
badd +16 home.dart
badd +27 __FLUTTER_DEV_LOG__
badd +2 term://~/projects/hello//345147:/usr/bin/zsh
badd +7354 __FLUTTER_DEV_LOG__
badd +4 ~/projects/hello/lib/tool.dart
badd +3 welcome.dart
badd +1184 __FLUTTER_DEV_LOG__
badd +29 journey.dart
badd +62 ~/projects/hello/pubspec.yaml
badd +12 ~/projects/hello/assets/text.json
badd +9 ~/projects/hello/lib/models/page.dart
badd +14 school.dart
badd +12 mastery.dart
badd +32 pulse.dart
badd +14 ~/projects/hello/lib/models/course.dart
badd +25 ~/projects/hello/lib/models/story.dart
badd +2 ~/projects/hello/lib/models/skill.dart
argglobal
%argdel
set stal=2
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit ~/projects/hello/lib/main.dart
tcd ~/projects/hello
argglobal
balt ~/projects/hello/lib/widgets/home.dart
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=3
setlocal fen
4
normal! zo
8
normal! zo
12
normal! zo
13
normal! zo
let s:l = 18 - ((17 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 18
normal! 035|
tabnext
edit ~/projects/hello/lib/widgets/home.dart
tcd ~/projects/hello
argglobal
balt ~/projects/hello/__FLUTTER_DEV_LOG__
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=9
setlocal fen
12
normal! zo
20
normal! zo
24
normal! zo
30
normal! zo
37
normal! zo
39
normal! zo
41
normal! zo
42
normal! zo
43
normal! zo
46
normal! zo
let s:l = 22 - ((21 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 22
normal! 022|
tabnext
edit ~/projects/hello/lib/widgets/bar.dart
tcd ~/projects/hello
argglobal
balt ~/projects/hello/__FLUTTER_DEV_LOG__
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=9
setlocal fen
4
normal! zo
8
normal! zo
9
normal! zo
14
normal! zo
24
normal! zo
25
normal! zo
let s:l = 19 - ((18 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 19
normal! 010|
tabnext
edit ~/projects/hello/lib/widgets/mastery.dart
tcd ~/projects/hello
argglobal
balt ~/projects/hello/__FLUTTER_DEV_LOG__
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=9
setlocal fen
5
normal! zo
9
normal! zo
11
normal! zo
12
normal! zo
19
normal! zo
21
normal! zo
22
normal! zo
39
normal! zo
39
normal! zo
40
normal! zo
41
normal! zo
43
normal! zo
let s:l = 42 - ((34 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 42
normal! 011|
tabnext
edit ~/projects/hello/lib/widgets/school.dart
tcd ~/projects/hello
argglobal
balt ~/projects/hello/__FLUTTER_DEV_LOG__
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=9
setlocal fen
9
normal! zo
9
normal! zo
12
normal! zo
13
normal! zo
20
normal! zo
22
normal! zo
23
normal! zo
39
normal! zo
42
normal! zo
44
normal! zo
45
normal! zo
let s:l = 22 - ((18 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 22
normal! 022|
tabnext
edit ~/projects/hello/lib/models/skill.dart
tcd ~/projects/hello
argglobal
balt ~/projects/hello/lib/widgets/mastery.dart
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=9
setlocal fen
1
normal! zo
8
normal! zo
8
normal! zo
9
normal! zo
13
normal! zo
17
normal! zo
21
normal! zo
25
normal! zo
29
normal! zo
let s:l = 43 - ((40 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 43
normal! 03|
tabnext
edit ~/projects/hello/lib/models/story.dart
tcd ~/projects/hello/lib
argglobal
balt ~/projects/hello/lib/__FLUTTER_DEV_LOG__
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=9
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
tabnext
edit ~/projects/hello/lib/widgets/journey.dart
tcd ~/projects/hello/lib
argglobal
balt ~/projects/hello/lib/__FLUTTER_DEV_LOG__
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=9
setlocal fen
let s:l = 8 - ((7 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 8
normal! 0
tabnext
edit ~/projects/hello/lib/models/course.dart
tcd ~/projects/hello
argglobal
balt ~/projects/hello/lib/widgets/mastery.dart
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=9
setlocal fen
1
normal! zo
14
normal! zo
15
normal! zo
let s:l = 14 - ((13 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 14
normal! 05|
tabnext 9
set stal=1
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
