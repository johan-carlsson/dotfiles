" Vim color file
" Maintainer:	Michael Piefel <piefel@informatik.hu-berlin.de>
" Last Change:	2001 Aug 16
" License:	Public Domain

" This color scheme uses a White background. It's based on Bram's
" morning theme, but doesn't try to work for non-GUI editing.
" 
" It's supposed to look like the Emacs standard colors, at least
" for C. But Emacs has different categories, so it's not very good.

" First remove all existing highlighting.
set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "johan"

hi Normal guifg=#222222 guibg=#FFFBC0 
" Groups used in the 'highlight' and 'guicursor' options default value.
hi ErrorMsg guibg=Red guifg=White
hi IncSearch gui=reverse
hi ModeMsg gui=bold
hi StatusLine gui=reverse,bold guifg=#bbbbbb
hi StatusLineNC gui=reverse
hi VertSplit gui=reverse
hi Visual gui=reverse guifg=#eeeeee guibg=fg
hi VisualNOS gui=underline,bold
hi DiffText gui=bold guibg=Red
hi Cursor guibg=Black guifg=#cccccc
hi lCursor guibg=Cyan guifg=NONE
hi Directory guifg=Blue
hi LineNr guifg=#dddddd
hi MoreMsg gui=bold guifg=SeaGreen
hi NonText gui=bold guifg=Blue guibg=grey90
hi Question gui=bold guifg=SeaGreen
hi Search guibg=#dddddd guifg=NONE
hi SpecialKey guifg=Blue
hi Title gui=bold guifg=Magenta
hi WarningMsg guifg=Red
hi WildMenu guibg=Yellow guifg=Black
hi Folded guibg=White guifg=DarkBlue
hi FoldColumn guibg=Grey guifg=DarkBlue
hi DiffAdd guibg=LightBlue
hi DiffChange guibg=LightMagenta
hi DiffDelete gui=bold guifg=Blue guibg=LightCyan

" Colors for syntax highlighting
hi Comment guifg=#aaaaaa guibg=#FFFBC0
hi Constant guifg=#0000ff guibg=#FFFBC0
hi PreProc guifg=#c6522b guibg=#FFFBC0
hi Statement gui=NONE guifg=#52c62b guibg=#FFFBC0
hi Type guifg=#522bc6 guibg=#FFFBC0
hi Special guifg=SlateBlue guibg=#FFFBC0
hi Ignore guifg=White


" Some specials (override hilinks)


" vim: sw=2
