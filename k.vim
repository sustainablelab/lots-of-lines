let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/gitrepos/on-subway/k
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd Makefile
edit /mingw64/include/SDL2/SDL_render.h
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
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
exe '1resize ' . ((&lines * 6 + 25) / 51)
exe 'vert 1resize ' . ((&columns * 114 + 97) / 194)
exe '2resize ' . ((&lines * 41 + 25) / 51)
exe 'vert 2resize ' . ((&columns * 114 + 97) / 194)
exe '3resize ' . ((&lines * 37 + 25) / 51)
exe 'vert 3resize ' . ((&columns * 79 + 97) / 194)
exe '4resize ' . ((&lines * 10 + 25) / 51)
exe 'vert 4resize ' . ((&columns * 79 + 97) / 194)
argglobal
balt k.c
lnoremap <buffer> ALPHA Α
lnoremap <buffer> BETA Β
lnoremap <buffer> CHI Χ
lnoremap <buffer> Dhh ┅
lnoremap <buffer> Dhv ┇
lnoremap <buffer> Dlh ┄
lnoremap <buffer> Dlv ┆
lnoremap <buffer> DELTA Δ
lnoremap <buffer> ETA Η
lnoremap <buffer> EPSILON Ε
lnoremap <buffer> GAMMA Γ
lnoremap <buffer> PHI Φ
lnoremap <buffer> RHO Ρ
lnoremap <buffer> THETA Θ
lnoremap <buffer> ZETA Ζ
lnoremap <buffer> arl ←
lnoremap <buffer> ard ↓
lnoremap <buffer> arr →
lnoremap <buffer> aru ↑
lnoremap <buffer> approx ≈
lnoremap <buffer> aumlaut ä
lnoremap <buffer> alpha α
lnoremap <buffer> a4 à
lnoremap <buffer> a3 ǎ
lnoremap <buffer> a2 á
lnoremap <buffer> a1 ā
lnoremap <buffer> brc ┼
lnoremap <buffer> brl ┤
lnoremap <buffer> brr ├
lnoremap <buffer> bru ┴
lnoremap <buffer> brd ┬
lnoremap <buffer> bv │
let s:cpo_save=&cpo
set cpo&vim
lnoremap <buffer> bh ─
lnoremap <buffer> bul ┘
lnoremap <buffer> bur └
lnoremap <buffer> bdl ┐
lnoremap <buffer> bdr ┌
lnoremap <buffer> barl ◀
lnoremap <buffer> bard ▼
lnoremap <buffer> barr ▶
lnoremap <buffer> baru ▲
lnoremap <buffer> beta β
lnoremap <buffer> chi χ
lnoremap <buffer> dot ●
lnoremap <buffer> dul ┛
lnoremap <buffer> dur ┗
lnoremap <buffer> ddl ┓
lnoremap <buffer> ddr ┏
lnoremap <buffer> dhh ┉
lnoremap <buffer> dhv ┋
lnoremap <buffer> dlh ┈
lnoremap <buffer> dlv ┊
lnoremap <buffer> dac ▾
lnoremap <buffer> dae ▸
lnoremap <buffer> dia ⌀
lnoremap <buffer> delta δ
lnoremap <buffer> deg °
lnoremap <buffer> eqq ≡
lnoremap <buffer> eumlaut ë
lnoremap <buffer> eta η
lnoremap <buffer> epsilon ε
lnoremap <buffer> e4 è
lnoremap <buffer> e3 ě
lnoremap <buffer> e2 é
lnoremap <buffer> e1 ē
lnoremap <buffer> geq ≥
lnoremap <buffer> gamma γ
lnoremap <buffer> half ½
lnoremap <buffer> iseq ≟
lnoremap <buffer> iumlaut ï
lnoremap <buffer> i4 ì
lnoremap <buffer> i3 ǐ
lnoremap <buffer> i2 í
lnoremap <buffer> i1 ī
lnoremap <buffer> lar ←
lnoremap <buffer> leq ≤
lnoremap <buffer> lambda λ
lnoremap <buffer> mu µ
lnoremap <buffer> neq ≠
lnoremap <buffer> nu ν
lnoremap <buffer> oumlaut ö
lnoremap <buffer> ohm Ω
lnoremap <buffer> o4 ò
lnoremap <buffer> o3 ǒ
lnoremap <buffer> o2 ó
lnoremap <buffer> o1 ō
lnoremap <buffer> pm ±
lnoremap <buffer> pi π
lnoremap <buffer> phi ϕ
lnoremap <buffer> rho ρ
lnoremap <buffer> squared ²
lnoremap <buffer> third ³
lnoremap <buffer> tim ∗
lnoremap <buffer> theta θ
lnoremap <buffer> uumlaut ü
lnoremap <buffer> u4 ù
lnoremap <buffer> u3 ǔ
lnoremap <buffer> u2 ú
lnoremap <buffer> u1 ū
lnoremap <buffer> zeta ζ
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=symbols
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=+1
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal cursorcolumn
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=^\\s*#\\s*define
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=jcroql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*#\\s*include
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal list
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal previewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=4
setlocal spell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_us
setlocal spelloptions=
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=80
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal winfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
58
normal! zo
311
normal! zo
let s:l = 1405 - ((32 * winheight(0) + 3) / 6)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1405
normal! 0
wincmd w
argglobal
if bufexists("k.c") | buffer k.c | else | edit k.c | endif
balt ../d/d.c
lnoremap <buffer> ALPHA Α
lnoremap <buffer> BETA Β
lnoremap <buffer> CHI Χ
lnoremap <buffer> Dhh ┅
lnoremap <buffer> Dhv ┇
lnoremap <buffer> Dlh ┄
lnoremap <buffer> Dlv ┆
lnoremap <buffer> DELTA Δ
lnoremap <buffer> ETA Η
lnoremap <buffer> EPSILON Ε
lnoremap <buffer> GAMMA Γ
lnoremap <buffer> PHI Φ
lnoremap <buffer> RHO Ρ
lnoremap <buffer> THETA Θ
lnoremap <buffer> ZETA Ζ
lnoremap <buffer> arl ←
lnoremap <buffer> ard ↓
lnoremap <buffer> arr →
lnoremap <buffer> aru ↑
lnoremap <buffer> approx ≈
lnoremap <buffer> aumlaut ä
lnoremap <buffer> alpha α
lnoremap <buffer> a4 à
lnoremap <buffer> a3 ǎ
lnoremap <buffer> a2 á
lnoremap <buffer> a1 ā
lnoremap <buffer> brc ┼
lnoremap <buffer> brl ┤
lnoremap <buffer> brr ├
lnoremap <buffer> bru ┴
lnoremap <buffer> brd ┬
lnoremap <buffer> bv │
let s:cpo_save=&cpo
set cpo&vim
lnoremap <buffer> bh ─
lnoremap <buffer> bul ┘
lnoremap <buffer> bur └
lnoremap <buffer> bdl ┐
lnoremap <buffer> bdr ┌
lnoremap <buffer> barl ◀
lnoremap <buffer> bard ▼
lnoremap <buffer> barr ▶
lnoremap <buffer> baru ▲
lnoremap <buffer> beta β
lnoremap <buffer> chi χ
lnoremap <buffer> dot ●
lnoremap <buffer> dul ┛
lnoremap <buffer> dur ┗
lnoremap <buffer> ddl ┓
lnoremap <buffer> ddr ┏
lnoremap <buffer> dhh ┉
lnoremap <buffer> dhv ┋
lnoremap <buffer> dlh ┈
lnoremap <buffer> dlv ┊
lnoremap <buffer> dac ▾
lnoremap <buffer> dae ▸
lnoremap <buffer> dia ⌀
lnoremap <buffer> delta δ
lnoremap <buffer> deg °
lnoremap <buffer> eqq ≡
lnoremap <buffer> eumlaut ë
lnoremap <buffer> eta η
lnoremap <buffer> epsilon ε
lnoremap <buffer> e4 è
lnoremap <buffer> e3 ě
lnoremap <buffer> e2 é
lnoremap <buffer> e1 ē
lnoremap <buffer> geq ≥
lnoremap <buffer> gamma γ
lnoremap <buffer> half ½
lnoremap <buffer> iseq ≟
lnoremap <buffer> iumlaut ï
lnoremap <buffer> i4 ì
lnoremap <buffer> i3 ǐ
lnoremap <buffer> i2 í
lnoremap <buffer> i1 ī
lnoremap <buffer> lar ←
lnoremap <buffer> leq ≤
lnoremap <buffer> lambda λ
lnoremap <buffer> mu µ
lnoremap <buffer> neq ≠
lnoremap <buffer> nu ν
lnoremap <buffer> oumlaut ö
lnoremap <buffer> ohm Ω
lnoremap <buffer> o4 ò
lnoremap <buffer> o3 ǒ
lnoremap <buffer> o2 ó
lnoremap <buffer> o1 ō
lnoremap <buffer> pm ±
lnoremap <buffer> pi π
lnoremap <buffer> phi ϕ
lnoremap <buffer> rho ρ
lnoremap <buffer> squared ²
lnoremap <buffer> third ³
lnoremap <buffer> tim ∗
lnoremap <buffer> theta θ
lnoremap <buffer> uumlaut ü
lnoremap <buffer> u4 ù
lnoremap <buffer> u3 ǔ
lnoremap <buffer> u2 ú
lnoremap <buffer> u1 ū
lnoremap <buffer> zeta ζ
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=symbols
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=+1
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal cursorcolumn
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=^\\s*#\\s*define
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'c'
setlocal filetype=c
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=jcroql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*#\\s*include
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal list
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=4
setlocal spell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_us
setlocal spelloptions=
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=80
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
8
normal! zo
20
normal! zo
24
normal! zo
24
normal! zo
24
normal! zo
let s:l = 37 - ((31 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 37
normal! 09|
wincmd w
argglobal
if bufexists("Makefile") | buffer Makefile | else | edit Makefile | endif
balt headers-M.txt
lnoremap <buffer> ALPHA Α
lnoremap <buffer> BETA Β
lnoremap <buffer> CHI Χ
lnoremap <buffer> Dhh ┅
lnoremap <buffer> Dhv ┇
lnoremap <buffer> Dlh ┄
lnoremap <buffer> Dlv ┆
lnoremap <buffer> DELTA Δ
lnoremap <buffer> ETA Η
lnoremap <buffer> EPSILON Ε
lnoremap <buffer> GAMMA Γ
lnoremap <buffer> PHI Φ
lnoremap <buffer> RHO Ρ
lnoremap <buffer> THETA Θ
lnoremap <buffer> ZETA Ζ
lnoremap <buffer> arl ←
lnoremap <buffer> ard ↓
lnoremap <buffer> arr →
lnoremap <buffer> aru ↑
lnoremap <buffer> approx ≈
lnoremap <buffer> aumlaut ä
lnoremap <buffer> alpha α
lnoremap <buffer> a4 à
lnoremap <buffer> a3 ǎ
lnoremap <buffer> a2 á
lnoremap <buffer> a1 ā
lnoremap <buffer> brc ┼
lnoremap <buffer> brl ┤
lnoremap <buffer> brr ├
lnoremap <buffer> bru ┴
lnoremap <buffer> brd ┬
lnoremap <buffer> bv │
let s:cpo_save=&cpo
set cpo&vim
lnoremap <buffer> bh ─
lnoremap <buffer> bul ┘
lnoremap <buffer> bur └
lnoremap <buffer> bdl ┐
lnoremap <buffer> bdr ┌
lnoremap <buffer> barl ◀
lnoremap <buffer> bard ▼
lnoremap <buffer> barr ▶
lnoremap <buffer> baru ▲
lnoremap <buffer> beta β
lnoremap <buffer> chi χ
lnoremap <buffer> dot ●
lnoremap <buffer> dul ┛
lnoremap <buffer> dur ┗
lnoremap <buffer> ddl ┓
lnoremap <buffer> ddr ┏
lnoremap <buffer> dhh ┉
lnoremap <buffer> dhv ┋
lnoremap <buffer> dlh ┈
lnoremap <buffer> dlv ┊
lnoremap <buffer> dac ▾
lnoremap <buffer> dae ▸
lnoremap <buffer> dia ⌀
lnoremap <buffer> delta δ
lnoremap <buffer> deg °
lnoremap <buffer> eqq ≡
lnoremap <buffer> eumlaut ë
lnoremap <buffer> eta η
lnoremap <buffer> epsilon ε
lnoremap <buffer> e4 è
lnoremap <buffer> e3 ě
lnoremap <buffer> e2 é
lnoremap <buffer> e1 ē
lnoremap <buffer> geq ≥
lnoremap <buffer> gamma γ
lnoremap <buffer> half ½
lnoremap <buffer> iseq ≟
lnoremap <buffer> iumlaut ï
lnoremap <buffer> i4 ì
lnoremap <buffer> i3 ǐ
lnoremap <buffer> i2 í
lnoremap <buffer> i1 ī
lnoremap <buffer> lar ←
lnoremap <buffer> leq ≤
lnoremap <buffer> lambda λ
lnoremap <buffer> mu µ
lnoremap <buffer> neq ≠
lnoremap <buffer> nu ν
lnoremap <buffer> oumlaut ö
lnoremap <buffer> ohm Ω
lnoremap <buffer> o4 ò
lnoremap <buffer> o3 ǒ
lnoremap <buffer> o2 ó
lnoremap <buffer> o1 ō
lnoremap <buffer> pm ±
lnoremap <buffer> pi π
lnoremap <buffer> phi ϕ
lnoremap <buffer> rho ρ
lnoremap <buffer> squared ²
lnoremap <buffer> third ³
lnoremap <buffer> tim ∗
lnoremap <buffer> theta θ
lnoremap <buffer> uumlaut ü
lnoremap <buffer> u4 ù
lnoremap <buffer> u3 ǔ
lnoremap <buffer> u2 ú
lnoremap <buffer> u1 ū
lnoremap <buffer> zeta ζ
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=symbols
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=+1
setlocal comments=sO:#\ -,mO:#\ \ ,b:#
setlocal commentstring=#\ %s
setlocal complete=.,w,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal cursorcolumn
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'make'
setlocal filetype=make
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=jcroql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*include
setlocal includeexpr=
setlocal indentexpr=GetMakeIndent()
setlocal indentkeys=!^F,o,O,<:>,=else,=endif
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal list
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=0
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal spell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_us
setlocal spelloptions=
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'make'
setlocal syntax=make
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=80
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 13 - ((12 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 13
normal! 0
wincmd w
argglobal
enew
balt Makefile
lnoremap <buffer> ALPHA Α
lnoremap <buffer> BETA Β
lnoremap <buffer> CHI Χ
lnoremap <buffer> Dhh ┅
lnoremap <buffer> Dhv ┇
lnoremap <buffer> Dlh ┄
lnoremap <buffer> Dlv ┆
lnoremap <buffer> DELTA Δ
lnoremap <buffer> ETA Η
lnoremap <buffer> EPSILON Ε
lnoremap <buffer> GAMMA Γ
lnoremap <buffer> PHI Φ
lnoremap <buffer> RHO Ρ
lnoremap <buffer> THETA Θ
lnoremap <buffer> ZETA Ζ
lnoremap <buffer> arl ←
lnoremap <buffer> ard ↓
lnoremap <buffer> arr →
lnoremap <buffer> aru ↑
lnoremap <buffer> approx ≈
lnoremap <buffer> aumlaut ä
lnoremap <buffer> alpha α
lnoremap <buffer> a4 à
lnoremap <buffer> a3 ǎ
lnoremap <buffer> a2 á
lnoremap <buffer> a1 ā
lnoremap <buffer> brc ┼
lnoremap <buffer> brl ┤
lnoremap <buffer> brr ├
lnoremap <buffer> bru ┴
lnoremap <buffer> brd ┬
lnoremap <buffer> bv │
let s:cpo_save=&cpo
set cpo&vim
lnoremap <buffer> bh ─
lnoremap <buffer> bul ┘
lnoremap <buffer> bur └
lnoremap <buffer> bdl ┐
lnoremap <buffer> bdr ┌
lnoremap <buffer> barl ◀
lnoremap <buffer> bard ▼
lnoremap <buffer> barr ▶
lnoremap <buffer> baru ▲
lnoremap <buffer> beta β
lnoremap <buffer> chi χ
lnoremap <buffer> dot ●
lnoremap <buffer> dul ┛
lnoremap <buffer> dur ┗
lnoremap <buffer> ddl ┓
lnoremap <buffer> ddr ┏
lnoremap <buffer> dhh ┉
lnoremap <buffer> dhv ┋
lnoremap <buffer> dlh ┈
lnoremap <buffer> dlv ┊
lnoremap <buffer> dac ▾
lnoremap <buffer> dae ▸
lnoremap <buffer> dia ⌀
lnoremap <buffer> delta δ
lnoremap <buffer> deg °
lnoremap <buffer> eqq ≡
lnoremap <buffer> eumlaut ë
lnoremap <buffer> eta η
lnoremap <buffer> epsilon ε
lnoremap <buffer> e4 è
lnoremap <buffer> e3 ě
lnoremap <buffer> e2 é
lnoremap <buffer> e1 ē
lnoremap <buffer> geq ≥
lnoremap <buffer> gamma γ
lnoremap <buffer> half ½
lnoremap <buffer> iseq ≟
lnoremap <buffer> iumlaut ï
lnoremap <buffer> i4 ì
lnoremap <buffer> i3 ǐ
lnoremap <buffer> i2 í
lnoremap <buffer> i1 ī
lnoremap <buffer> lar ←
lnoremap <buffer> leq ≤
lnoremap <buffer> lambda λ
lnoremap <buffer> mu µ
lnoremap <buffer> neq ≠
lnoremap <buffer> nu ν
lnoremap <buffer> oumlaut ö
lnoremap <buffer> ohm Ω
lnoremap <buffer> o4 ò
lnoremap <buffer> o3 ǒ
lnoremap <buffer> o2 ó
lnoremap <buffer> o1 ō
lnoremap <buffer> pm ±
lnoremap <buffer> pi π
lnoremap <buffer> phi ϕ
lnoremap <buffer> rho ρ
lnoremap <buffer> squared ²
lnoremap <buffer> third ³
lnoremap <buffer> tim ∗
lnoremap <buffer> theta θ
lnoremap <buffer> uumlaut ü
lnoremap <buffer> u4 ù
lnoremap <buffer> u3 ǔ
lnoremap <buffer> u2 ú
lnoremap <buffer> u1 ū
lnoremap <buffer> zeta ζ
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=symbols
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=hide
setlocal buflisted
setlocal buftype=quickfix
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=+1
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal cursorcolumn
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'qf'
setlocal filetype=qf
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croqtj
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal list
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal nomodifiable
setlocal nrformats=bin,octal,hex
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=4
setlocal spell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_us
setlocal spelloptions=
setlocal statusline=%t%{exists('w:quickfix_title')?\ '\ '.w:quickfix_title\ :\ ''}\ %=%-15(%l,%c%V%)\ %P
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=300
if &syntax != 'qf'
setlocal syntax=qf
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=80
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal winfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 6 + 25) / 51)
exe 'vert 1resize ' . ((&columns * 114 + 97) / 194)
exe '2resize ' . ((&lines * 41 + 25) / 51)
exe 'vert 2resize ' . ((&columns * 114 + 97) / 194)
exe '3resize ' . ((&lines * 37 + 25) / 51)
exe 'vert 3resize ' . ((&columns * 79 + 97) / 194)
exe '4resize ' . ((&lines * 10 + 25) / 51)
exe 'vert 4resize ' . ((&columns * 79 + 97) / 194)
tabnext 1
badd +9 Makefile
badd +37 k.c
badd +24 parse-headers.c
badd +4 bool.h
badd +1 headers-M.txt
badd +0 headers.txt
badd +0 /mingw64/include/SDL2/SDL.h
badd +0 /mingw64/include/SDL2/SDL_video.h
badd +318 /mingw64/include/SDL2/SDL_render.h
badd +220 /mingw64/include/SDL2/SDL_stdinc.h
badd +82 ~/work/lumiode/gitrepos/sim-56x96/Makefile
badd +5803 ~/.vim/vimrc
badd +0 color.h
badd +4 window_info.h
badd +78 ../d/d.c
badd +260 C:/msys64/mingw64/include/SDL2/SDL_pixels.h
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOS
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
