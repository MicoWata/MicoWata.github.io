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
badd +110 school.dart
badd +98 journey.dart
badd +65 bar.dart
badd +141 __FLUTTER_DEV_LOG__
badd +23 ~/projects/hello/lib/tool.dart
badd +30 welcome.dart
badd +0 __FLUTTER_DEV_LOG__
badd +4 term://~/projects/hello/lib//169654:/usr/bin/zsh
badd +1 animated.dart
argglobal
%argdel
set stal=2
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit school.dart
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
5
normal! zo
8
normal! zo
9
normal! zo
14
normal! zo
19
normal! zo
26
normal! zo
30
normal! zo
34
normal! zo
38
normal! zo
41
normal! zo
44
normal! zo
49
normal! zo
51
normal! zo
53
normal! zo
55
normal! zo
56
normal! zo
63
normal! zo
65
normal! zo
66
normal! zo
67
normal! zo
74
normal! zo
84
normal! zo
86
normal! zo
88
normal! zo
89
normal! zo
107
normal! zo
113
normal! zo
118
normal! zo
121
normal! zo
130
normal! zo
133
normal! zo
135
normal! zo
137
normal! zo
140
normal! zo
143
normal! zo
let s:l = 133 - ((38 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 133
normal! 021|
tabnext
edit ~/projects/hello/lib/widgets/welcome.dart
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 119 + 80) / 160)
exe 'vert 2resize ' . ((&columns * 40 + 80) / 160)
tcd ~/projects/hello/lib
argglobal
balt ~/projects/hello/lib/widgets/bar.dart
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=9
setlocal fen
14
normal! zo
23
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
62
normal! zo
65
normal! zo
73
normal! zo
75
normal! zo
81
normal! zo
83
normal! zo
140
normal! zo
145
normal! zo
147
normal! zo
149
normal! zo
150
normal! zo
151
normal! zo
153
normal! zo
162
normal! zo
183
normal! zo
let s:l = 29 - ((25 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 29
normal! 0
wincmd w
argglobal
enew
file ~/projects/hello/lib/neo-tree\ filesystem\ \[2]
balt ~/projects/hello/lib/widgets/welcome.dart
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=9
setlocal fen
wincmd w
exe 'vert 1resize ' . ((&columns * 119 + 80) / 160)
exe 'vert 2resize ' . ((&columns * 40 + 80) / 160)
tabnext
edit ~/projects/hello/lib/widgets/animated.dart
tcd ~/projects/hello/lib
argglobal
balt ~/projects/hello/lib/widgets/welcome.dart
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=9
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
tabnext
edit ~/projects/hello/lib/widgets/journey.dart
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
5
normal! zo
9
normal! zo
28
normal! zo
31
normal! zo
32
normal! zo
33
normal! zo
36
normal! zo
53
normal! zo
54
normal! zo
56
normal! zo
58
normal! zo
60
normal! zo
61
normal! zo
64
normal! zo
97
normal! zo
100
normal! zo
let s:l = 98 - ((17 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 98
normal! 013|
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
5
normal! zo
9
normal! zo
55
normal! zo
60
normal! zo
63
normal! zo
65
normal! zo
68
normal! zo
78
normal! zo
82
normal! zo
84
normal! zo
87
normal! zo
90
normal! zo
91
normal! zo
92
normal! zo
99
normal! zo
100
normal! zo
108
normal! zo
109
normal! zo
116
normal! zo
117
normal! zo
124
normal! zo
125
normal! zo
128
normal! zo
142
normal! zo
let s:l = 67 - ((61 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 67
normal! 026|
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
let s:l = 23 - ((22 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 23
normal! 043|
tabnext 3
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
