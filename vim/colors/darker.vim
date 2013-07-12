hi clear
if exists("syntax_on")
    syntax reset
endif
let colors_name="darker"
set t_Co=256

" Base color
" ----------
hi Normal           guifg=#e0e0e0           guibg=#000000
hi Normal           ctermfg=253             ctermbg=0


" Comment Group
" -------------
" any comment
hi Comment          guifg=#606060                                   gui=none
hi Comment          ctermfg=244                                     cterm=none

" Constant Group
" --------------
" any constant
hi Constant         guifg=#8cd0d3                                   gui=none
hi Constant         ctermfg=116                                     cterm=none
" strings
hi String           guifg=#c69522                                   gui=none
hi String           ctermfg=178                                     cterm=bold
" character constant
hi Character        guifg=#80c0d9                                   gui=none
hi Character        ctermfg=110                                     cterm=none
" numbers decimal/hex
hi Number           guifg=#00ffff                                   gui=none
hi Number           ctermfg=51                                     cterm=none
" true, false
hi Boolean          guifg=#d7d787                                   gui=none
hi Boolean          ctermfg=186                                     cterm=none
" float
hi Float            guifg=#8cd0d3                                   gui=none
hi Float            ctermfg=186                                     cterm=none


" Identifier Group
" ----------------
" any variable name
hi Identifier       guifg=#e0e0e0                                   gui=none
hi Identifier       ctermfg=252                                     cterm=none
" function, method, class
hi Function         guifg=#ff8000                                   gui=none
hi Function         ctermfg=202                                     cterm=none
hi cFunction        guifg=#ff8000                                   gui=none
hi cFunction        ctermfg=202                                     cterm=none


" Statement Group
" ---------------
" any statement
hi Statement        guifg=#d6d694                                   guibg=#000000
hi Statement        ctermfg=186                                     ctermbg=none    cterm=none
" if, then, else
hi Conditional      guifg=#b3d38c                                   gui=none
hi Conditional      ctermfg=186                                     cterm=none
" try, catch, throw, raise
hi Exception        guifg=#b3d38c                                   gui=none
hi Exception        ctermfg=150                                     cterm=none
" for, while, do
hi Repeat           guifg=#b3d38c                                   gui=none
hi Repeat           ctermfg=186                                     cterm=none
" case, default
hi Label            guifg=#b3d38c                                   gui=none
hi Label            ctermfg=186                                     cterm=none
" sizeof, +, *
hi Operator         guifg=#80ff00                                   gui=none
hi Operator         ctermfg=118                                     cterm=none
" any other keyword
hi Keyword          guifg=#E87982                                   gui=none
hi Keyword          ctermfg=150                                     cterm=none


" Preprocessor Group
" ------------------
" generic preprocessor
hi PreProc          guifg=#DE7DF7                                  gui=none
hi PreProc          ctermfg=213                                     cterm=none
" #include
hi Include          guifg=#436c5c                                  gui=none
hi Include          ctermfg=36                                    cterm=none
" #define
hi Define           guifg=#436c5c                                   gui=none
hi Define           ctermfg=36                                     cterm=none
" same as define
hi Macro            guifg=#ff80ff                                  gui=none
hi Macro            ctermfg=213                                     cterm=none
" #if, #else, #endif
hi PreCondit        guifg=#436c5c                                  gui=none
hi PreCondit        ctermfg=36                                     cterm=none


" Type Group
" ----------
" int, long, char
hi Type             guifg=#7e78bf                                   gui=none
hi Type             ctermfg=75                                     cterm=none
" static, register, volative
hi StorageClass     guifg=#d6d694                                   gui=none
hi StorageClass     ctermfg=75                                      cterm=none
" struct, union, enum
hi Structure        guifg=#8080ff                                   gui=none
hi Structure        ctermfg=75                                      cterm=none
" typedef
hi Typedef          guifg=#8080ff                                   gui=none
hi Typedef          ctermfg=105                                     cterm=none
"hi CTagsFunction       ctermfg=75                                     cterm=none

" Special Group
" -------------
" any special symbol
hi Special          guifg=#cca3b3                                   gui=none
hi Special          ctermfg=181                                     cterm=none
" special character in a constant
hi SpecialChar      guifg=#cca3b3                                   gui=none
hi SpecialChar      ctermfg=181                                     cterm=none
" things you can CTRL-]
hi Tag              guifg=#cca3b3                                   gui=none
hi Tag              ctermfg=181                                     cterm=none
" character that needs attention
hi Delimiter        guifg=#80ff00                                   gui=none
hi Delimiter        ctermfg=118                                     cterm=none
" special things inside a comment
hi SpecialComment   guifg=#cca3b3                                   gui=none
hi SpecialComment   ctermfg=181                                     cterm=none
" debugging statements
hi Debug            guifg=#cca3b3           guibg=#000000           gui=none
hi Debug            ctermfg=181             ctermbg=none            cterm=none


" Underlined Group
" ----------------
" text that stands out, html links
hi Underlined       guifg=fg                                        gui=underline
hi Underlined       ctermfg=fg                                      cterm=underline


" Ignore Group
" ------------
" left blank, hidden
hi Ignore           guifg=bg
hi Ignore           ctermfg=bg


" Error Group
" -----------
" any erroneous construct
hi Error            guifg=#e37170           guibg=#432323           gui=none
hi Error            ctermfg=167             ctermbg=52            cterm=none
hi cErrInParen      guifg=#80ff00           guibg=#000000           gui=none
hi cErrInParen      ctermfg=150             ctermbg=none 
hi cErrInBracket    guifg=#80ff00           guibg=#000000           gui=none
hi cErrInBracket    ctermfg=150             ctermbg=none 


" Todo Group
" ----------
" todo, fixme, note, xxx
hi Todo             guifg=#efef8f           guibg=#000000              gui=underline
hi Todo             ctermfg=228             ctermbg=none            cterm=underline


" Spelling
" --------
" word not recognized
hi SpellBad         guisp=#ee0000                                   gui=undercurl
hi SpellBad                                 ctermbg=9               cterm=undercurl
" word not capitalized
hi SpellCap         guisp=#eeee00                                   gui=undercurl
hi SpellCap                                 ctermbg=12              cterm=undercurl
" rare word
hi SpellRare        guisp=#ffa500                                   gui=undercurl
hi SpellRare                                ctermbg=13              cterm=undercurl
" wrong spelling for selected region
hi SpellLocal       guisp=#ffa500                                   gui=undercurl
hi SpellLocal                               ctermbg=14              cterm=undercurl


" Cursor
" ------
" character under the cursor
hi Cursor           guifg=bg                guibg=#ff3d4a
hi Cursor           ctermfg=bg              ctermbg=153
" like cursor, but used when in IME mode
hi CursorIM         guifg=bg                guibg=#96cdcd
hi CursorIM         ctermfg=bg              ctermbg=116
" cursor column
hi CursorColumn     guifg=#000000              guibg=#1c1c1c           gui=none
hi CursorColumn     ctermfg=none            ctermbg=236             cterm=none
" cursor line/row
hi CursorLine       gui=none                guibg=#1c1c1c           gui=none
hi CursorLine       ctermfg=none              ctermbg=236             cterm=none


" Misc
" ----
" directory names and other special names in listings
hi Directory        guifg=#c0e0b0                                   gui=none
hi Directory        ctermfg=151                                     cterm=none
" error messages on the command line
hi ErrorMsg         guifg=#ee0000           guibg=#000000              gui=none
hi ErrorMsg         ctermfg=196             ctermbg=none            cterm=none
" column separating vertically split windows
hi VertSplit        guifg=#777777           guibg=#363946           gui=none
hi VertSplit        ctermfg=242             ctermbg=237             cterm=none
" columns where signs are displayed (used in IDEs)
hi SignColumn       guifg=#9fafaf           guibg=#181818           gui=none
hi SignColumn       ctermfg=145             ctermbg=233             cterm=none
" line numbers
hi LineNr           guifg=#818698           guibg=#363946
hi LineNr           ctermfg=102             ctermbg=237
" match parenthesis, brackets
hi MatchParen       guifg=#00ff00           guibg=#363946              gui=bold
hi MatchParen       ctermfg=46              ctermbg=none            cterm=bold
" the 'more' prompt when output takes more than one line
hi MoreMsg          guifg=#2e8b57                                   gui=none
hi MoreMsg          ctermfg=29                                      cterm=none
" text showing what mode you are in
hi ModeMsg          guifg=#76d5f8           guibg=#000000              gui=none
hi ModeMsg          ctermfg=117             ctermbg=none            cterm=none
" the '~' and '@' and showbreak, '>' double wide char doesn't fit on line
hi NonText          guifg=#404040                                   gui=none
hi NonText          ctermfg=195             ctermbg=0             cterm=none
" the hit-enter prompt (show more output) and yes/no questions
hi Question         guifg=fg                                        gui=none
hi Question         ctermfg=fg                                      cterm=none
" meta and special keys used with map, unprintable characters
hi SpecialKey       guifg=bg guibg=bg
hi SpecialKey       ctermfg=bg ctermbg=bg cterm=none
" titles for output from :set all, :autocmd, etc
hi Title            guifg=#62bdde                                   gui=none
hi Title            ctermfg=74                                      cterm=none
"hi Title            guifg=#5ec8e5                                   gui=none
" warning messages
hi WarningMsg       guifg=#e5786d                                   gui=none
hi WarningMsg       ctermfg=173                                     cterm=none
" current match in the wildmenu completion
hi WildMenu         guifg=#cae682           guibg=#363946           gui=bold,underline
hi WildMenu         ctermfg=16              ctermbg=186             cterm=bold


" Diff
" ----
" added line
hi DiffAdd          guifg=#80a090           guibg=#313c36           gui=none
hi DiffAdd          ctermfg=108             ctermbg=22              cterm=none
" changed line
hi DiffChange       guifg=#000000              guibg=#4a343a           gui=none
hi DiffChange       ctermfg=fg              ctermbg=52              cterm=none
" deleted line
hi DiffDelete       guifg=#6c6661           guibg=#3c3631           gui=none
hi DiffDelete       ctermfg=fg              ctermbg=58              cterm=none
" changed text within line
hi DiffText         guifg=#f05060           guibg=#4a343a           gui=bold
hi DiffText         ctermfg=203             ctermbg=52             cterm=bold


" Folds
" -----
" line used for closed folds
hi Folded           guifg=#91d6f8           guibg=#363946           gui=none
hi Folded           ctermfg=117             ctermbg=238             cterm=none
" column on side used to indicated open and closed folds
hi FoldColumn       guifg=#91d6f8           guibg=#363946           gui=none
hi FoldColumn       ctermfg=117             ctermbg=238             cterm=none


" Search
" ------
" highlight incremental search text; also highlight text replaced with :s///c
hi IncSearch        guifg=#66ffff                                   gui=reverse
"hi IncSearch       ctermfg=87                                      cterm=reverse
hi IncSearch        ctermfg=214                                      cterm=reverse
" hlsearch (last search pattern), also used for quickfix
hi Search                                    guibg=#ffaa33          gui=none
hi Search                                    ctermbg=58            cterm=none

" Mark
hi ShowMarksHLl   ctermfg=none ctermbg=53 
hi ShowMarksHLu   ctermfg=none ctermbg=52 
hi ShowMarksHLo   ctermfg=none ctermbg=58 
hi ShowMarksHLm   ctermfg=none ctermbg=58 


" Popup Menu
" ----------
" normal item in popup
hi Pmenu            guifg=#e0e0e0           guibg=#3c2b69           gui=none
hi Pmenu            ctermfg=253             ctermbg=17             cterm=none
" selected item in popup
hi PmenuSel         guifg=#e0e0e0           guibg=#2b693c           gui=none
hi PmenuSel         ctermfg=253             ctermbg=22             cterm=none
" scrollbar in popup
hi PMenuSbar                                guibg=#505860           gui=none
hi PMenuSbar                                ctermbg=59              cterm=none
" thumb of the scrollbar in the popup
hi PMenuThumb                               guibg=#808890           gui=none
hi PMenuThumb                               ctermbg=102             cterm=none


" Status Line
" -----------
" status line for current window
hi StatusLine       guifg=#e0e0e0           guibg=#363946           gui=none
hi StatusLine       ctermfg=254             ctermbg=237             cterm=none
" status line for non-current windows
hi StatusLineNC     guifg=#767986           guibg=#363946           gui=none
hi StatusLineNC     ctermfg=244             ctermbg=237             cterm=none


" Tab Lines
" ---------
" tab pages line, not active tab page label
hi TabLine          guifg=#b6bf98           guibg=#363946           gui=none
hi TabLine          ctermfg=244             ctermbg=236             cterm=none
" tab pages line, where there are no labels
hi TabLineFill      guifg=#cfcfaf           guibg=#363946           gui=none
hi TabLineFill      ctermfg=187             ctermbg=236             cterm=none
" tab pages line, active tab page label
hi TabLineSel       guifg=#efefef           guibg=#414658           gui=bold
hi TabLineSel       ctermfg=254             ctermbg=236             cterm=bold


" Visual
" ------
" visual mode selection
hi Visual           guifg=#000000           guibg=#364458
hi Visual           ctermfg=none            ctermbg=24
" visual mode selection when vim is not owning the selection (x11 only)
hi VisualNOS        guifg=fg                                        gui=underline
hi VisualNOS        ctermfg=fg                                      cterm=underline


"----------------------------------------------------------------------------------
" Color for wirte in vimrc
"" //, or /* */
"hi Comment      ctermfg=146 ctermbg=233 
"
"" return , set, static_cast
"
"" F9 ESC
"hi Special      ctermfg=63      ctermbg=231     cterm=bold
"
"" const char* 
"hi StorageClass ctermfg=202     ctermbg=none    cterm=bold
"
"" define constant ex. EACCESS
"hi Constant     ctermfg=160     ctermbg=none   cterm=bold
"
"" ctermbg=none, part of value
"hi PreProc      ctermfg=31      ctermbg=none    cterm=none
"
"" ctermfg
"hi VimOption    ctermfg=167     ctermbg=none    cterm=none
"
"" ex. NERDtree help label
"hi Identifier   ctermfg=220     ctermbg=none      cterm=bold
"
"" This used in NERDtree's directory tree.... , ex _ |
"hi Special      ctermfg=208     ctermbg=none    cterm=none
"
"hi Typedef      ctermfg=96      ctermbg=178     cterm=bold
