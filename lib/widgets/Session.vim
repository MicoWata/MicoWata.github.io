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
badd +57 button.dart
badd +41 journey.dart
badd +54 home.dart
badd +71 animated.dart
badd +120 bar.dart
badd +126 welcome.dart
badd +199 school.dart
badd +30 __FLUTTER_DEV_LOG__
badd +7 ~/projects/hello/lib/tool.dart
badd +4 term://~/projects/hello/lib//169654:/usr/bin/zsh
badd +5 hall.dart
badd +1 mastery.dart
badd +43 __FLUTTER_DEV_LOG__
badd +928 ~/scrolls/flutter/packages/flutter/lib/src/widgets/framework.dart
badd +149 term://~/projects/hello/lib//242401:/usr/bin/zsh
badd +1 ~/projects/hello/lib/models/course.dart
badd +1 ~/projects/hello/web/favicon.png
badd +2 ~/projects/hello/build/web/favicon.png
badd +73 ~/projects/hello/pubspec.yaml
badd +204 __FLUTTER_DEV_LOG__
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
tabrewind
edit school.dart
tcd ~/projects/hello/lib/widgets
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
8
normal! zo
11
normal! zo
17
normal! zo
110
normal! zo
140
normal! zo
141
normal! zo
143
normal! zo
148
normal! zo
156
normal! zo
159
normal! zo
160
normal! zo
163
normal! zo
169
normal! zo
172
normal! zo
178
normal! zo
186
normal! zo
let s:l = 199 - ((22 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 199
normal! 032|
tabnext
edit ~/projects/hello/pubspec.yaml
tcd ~/projects/hello
argglobal
balt ~/projects/hello/lib/widgets/school.dart
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=9
setlocal fen
30
normal! zo
58
normal! zo
let s:l = 73 - ((28 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 73
normal! 032|
tabnext
edit ~/projects/hello/lib/models/course.dart
tcd ~/projects/hello/lib
argglobal
balt ~/projects/hello/lib/__FLUTTER_DEV_LOG__
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
16
normal! zo
17
normal! zo
let s:l = 12 - ((11 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 12
normal! 03|
tabnext
edit ~/projects/hello/lib/widgets/welcome.dart
tcd ~/projects/hello/lib
argglobal
balt ~/projects/hello/build/web/favicon.png
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=9
setlocal fen
15
normal! zo
24
normal! zo
31
normal! zo
32
normal! zo
33
normal! zo
35
normal! zo
36
normal! zo
38
normal! zo
39
normal! zo
72
normal! zo
75
normal! zo
83
normal! zo
85
normal! zo
93
normal! zo
95
normal! zo
31
normal! zc
107
normal! zo
108
normal! zo
110
normal! zo
114
normal! zo
118
normal! zo
121
normal! zo
122
normal! zo
135
normal! zo
let s:l = 126 - ((17 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 126
normal! 0
tabnext
edit ~/projects/hello/lib/widgets/bar.dart
tcd ~/projects/hello/lib
argglobal
balt ~/projects/hello/lib/widgets/welcome.dart
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=9
setlocal fen
8
normal! zo
12
normal! zo
22
normal! zo
24
normal! zo
25
normal! zo
81
normal! zo
85
normal! zo
87
normal! zo
90
normal! zo
91
normal! zo
92
normal! zo
92
normal! zo
92
normal! zo
92
normal! zo
92
normal! zo
92
normal! zo
92
normal! zo
92
normal! zo
94
normal! zo
100
normal! zo
102
normal! zo
108
normal! zo
110
normal! zo
116
normal! zo
118
normal! zo
124
normal! zo
128
normal! zo
144
normal! zo
144
normal! zo
148
normal! zo
159
normal! zo
let s:l = 120 - ((30 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 120
normal! 018|
tabnext
edit ~/projects/hello/lib/widgets/button.dart
tcd ~/projects/hello/lib
argglobal
balt ~/scrolls/flutter/packages/flutter/lib/src/widgets/framework.dart
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=9
setlocal fen
22
normal! zo
30
normal! zo
44
normal! zo
47
normal! zo
49
normal! zo
55
normal! zo
64
normal! zo
67
normal! zo
72
normal! zo
75
normal! zo
77
normal! zo
81
normal! zo
let s:l = 57 - ((17 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 57
normal! 011|
tabnext
edit ~/projects/hello/lib/widgets/animated.dart
tcd ~/projects/hello/lib/widgets
argglobal
balt ~/projects/hello/lib/widgets/__FLUTTER_DEV_LOG__
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=9
setlocal fen
16
normal! zo
42
normal! zo
49
normal! zo
50
normal! zo
52
normal! zo
76
normal! zo
let s:l = 56 - ((39 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 56
normal! 0
tabnext
edit ~/projects/hello/lib/tool.dart
tcd ~/projects/hello/lib
argglobal
balt ~/projects/hello/lib/widgets/school.dart
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=9
setlocal fen
8
normal! zo
let s:l = 7 - ((6 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 7
normal! 0
tabnext 1
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
