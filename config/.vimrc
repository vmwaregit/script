syntax   on
filetype on
filetype plugin on
filetype indent on
filetype plugin indent on
autocmd! bufwritepost .vimrc source ~/.vimrc

colorscheme  darker

nmap <Space>m <Plug>(quickhl-toggle)
nmap <Space>M <Plug>(quickhl-reset)

set cursorline 
set number 
set incsearch
set hlsearch
set ruler
set cindent
set autoindent
set autoread 
set autowrite
set smartindent
set nocompatible
set noerrorbells
set novisualbell
set t_vb=

set encoding=utf-8                                  
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,latin1


set completeopt=menuone,longest
set previewheight=12
set pumheight=15
set showtabline=2
set showmatch       " Cursor shows matching ) and }
set showmode        " Show current mode
set wildchar=<TAB>  " start wild expansion in the command line using <TAB>
set wildmenu        " wild char completion menu
set wildmode=full

" file setting
set nobackup
set nowritebackup
set noswapfile
set listchars=tab:>-
set list
set clipboard=unnamed   " yank to the system register (*) by default

" TAB setting
set expandtab        "replace <TAB> with spaces
set softtabstop=4
set shiftwidth=4
set tabstop=4
au FileType Makefile set noexpandtab

" disable sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SHORTCUT
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap ,.  <ESC>:bn<CR>
nmap .,  <ESC>:bp<CR>
nmap <leader>bm <ESC> :MarksBrowser<CR>
"nmap <leader>bb <ESC> :BufExplorerHorizontalSplit<CR>
nmap <leader>bt <ESC> :TagbarToggle<CR>
nmap <leader>bf <ESC> :NERDTreeToggle<CR>
nmap <leader>q  :q<CR>
nmap <leader>vu :ReplaceUndo<CR>
nmap <leader>tn :tabnew<CR>
"nmap <leader>ff :FufFile<CR>
"nmap <leader>ft :FufTag<CR>
"nmap <leader>fl :FufLine<CR>
"nmap <leader>fc :FufChangeList<CR>
"nmap <leader>fh :FufHelp<CR>

" ,p toggles paste mode
nmap <leader>p :set paste!<BAR>set paste?<CR>"

" allow multiple indentation/deindentation in visual mode
vnoremap < <gv
vnoremap > >gv"

if &diff
    nmap <leader>j ]c
    nmap <leader>k [c
    nmap <leader>l dp
    nmap <leader>h do
    nmap <leader>nn :qa<CR>
endif

" disbale Highlight search
nnoremap <silent><c-l> :nohl<cr><c-l>

" change current directory
cmap cd. lcd %:p:h

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" NEOCOMPLCACHE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Use neocomplcache.
"let g:neocomplcache_enable_at_startup = 1
"" Use smartcase.
"let g:neocomplcache_enable_smart_case = 1
"" Use camel case completion.
"let g:neocomplcache_enable_camel_case_completion = 1
"" Use underbar completion.
"let g:neocomplcache_enable_underbar_completion = 1
"" Set minimum syntax keyword length.
"let g:neocomplcache_min_syntax_length = 3
"let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
"
"" Define dictionary.
"let g:neocomplcache_dictionary_filetype_lists = {
"    \ 'default' : '',
"    \ }
"
"" Define keyword.
"if !exists('g:neocomplcache_keyword_patterns')
"  let g:neocomplcache_keyword_patterns = {}
"endif
"let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Recommended key-mappings.
" <CR>: close popup and save indent.
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
"inoremap <expr><C-y>  neocomplcache#close_popup()
"inoremap <expr><C-e>  neocomplcache#cancel_popup()

"" Enable heavy omni completion.
"if !exists('g:neocomplcache_omni_patterns')
"  let g:neocomplcache_omni_patterns = {}
"endif
"let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
"let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bufexploer
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:bufExplorerFindActive=1        " Go to active window.

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlight mark and line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn on/update highlighting for all lines with markers
nmap <silent><leader>hm  <ESC>:call HLMarks("Marks")<CR>      
" Turn off highlighting for lines with markers
"nmap <silent><leader>cm  <ESC>:call clearmatches()<CR>
"" Erase all markers [a-z]
"nmap <silent><leader>clm <ESC>:call clearmatches()\|:delmarks a-z<CR>
"" Add a mark on the current line (and highlight)
"nmap <silent><leader>am  <ESC>:call AddHLMark("Marks")<CR>
"" Remove the mark on the current line
"nmap <silent><leader>dm  <ESC>:call DelHLMark("Marks")<CR>

"
"map <silent> w <Plug>CamelCaseMotion_w
"map <silent> b <Plug>CamelCaseMotion_b
"map <silent> e <Plug>CamelCaseMotion_e
"sunmap w
"sunmap b
"sunmap e


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"EASYGREP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:EasyGrepMode=2
"let g:EasyGrepEveryMatch=1
"let g:EasyGrepRecursive=0
"let g:EasyGrepIgnoreCase=1
"let g:EasyGrepReplaceWindowMode=2


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"TAGLIST
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let Tlist_Ctags_Cmd = 'C:\\cygwin\\home\\yc\\.vim\\windowsi\\ctags.exe'
" Displaying tags for only one file~
"let Tlist_Show_One_File = 1 
"" if you are the last, kill yourself
"let Tlist_Exist_OnlyWindow = 1 
"" split to the right side of the screen
"let Tlist_Use_Right_Window = 1 
"" sort by order or name
"let Tlist_Sort_Type = "order" 
"" do not show prototypes and not tags in the taglist window.
"let Tlist_Display_Prototype = 0 
"" Remove extra information and blank lines from the taglist window.
"let Tlist_Compart_Format = 1 
"" Jump to taglist window on open.
"let Tlist_GainFocus_On_ToggleOpen = 0 
"" Show tag scope next to the tag name.
"let Tlist_Display_Tag_Scope = 1 
"" Close the taglist window when a file or tag is selected.
"let Tlist_Close_On_Select = 0 
"" Don't Show the fold indicator column in the taglist window.
"let Tlist_Enable_Fold_Column = 0 
"let Tlist_WinWidth = 40
"let Tlist_Auto_Update = 1
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COLOR
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
hi IndentGuidesOdd  ctermbg=238
hi IndentGuidesEven ctermbg=235

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SCRIPT
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"## Qucik fix window switch
function! QFSwitch()
    redir => ls_output
    execute ':silent! ls'
    redir END

    let exists = match(ls_output, "[Quickfix List")
    if exists == -1
        execute ':copen'
    else
        execute ':cclose'
    endif
endfunction

function! CurDir()
    let curdir = substitute(getcwd(), $HOME, "~", "")
    return curdir
endfunction

function! HasPaste()
    if &paste
        return ' P'
    else
        return 'NP'
    endif
endfunction

function! Strip_WhiteSpace()
    execute("g/^\s*$/d")
endfunction

fun! ViewUTF8()
    set encoding=utf-8                                  
    set termencoding=big5
endfun

fun! SetUTF8()
    set encoding=utf-8                                  
    set termencoding=big5
    set fileencoding=utf-8
    set fileencodings=ucs-bom,big5,utf-8,latin1
endfun

fun! SetBig5()
    set encoding=big5
    set fileencoding=big5
endfunction

" status line 
set laststatus=2
""set statusline=\ %{HasPaste()}%<%-15.25(%f%)%m%r%h\ %w\ \ 
""set statusline+=\ \ \ [%{&ff}/%Y] 
""set statusline+=\ \ \ %<%20.30(%{hostname()}:%{CurDir()}%)\ 
""set statusline+=%=%-10.(%l,%c%V%)\ %p%%/%L}"


" change status line status
hi StatColor ctermbg=lightgreen ctermfg=black
hi Modified  ctermbg=lightred   ctermfg=black
hi Delimit   ctermbg=lightblue  ctermfg=black

function! MyStatusLine(mode)
    let statusline=""
    if a:mode == 'Enter'
        let statusline.="%#StatColor#"
    endif
    let statusline.="\(%n\)\ %f\ "
    if a:mode == 'Enter'
        let statusline.="%*"
    endif
    let statusline.="%#Modified#%m"
    if a:mode == 'Leave'
        let statusline.="%*%r"
    elseif a:mode == 'Enter'
        let statusline.="%r%*"
    endif

    let statusline.="[%{HasPaste()}]"
    let statusline.="\ %=\ (%p%%,%l/%L,%c) "
    let statusline.="%#StatColor#"
    let statusline.="[%{&ff}/%Y][%{&encoding}][%{&fileformat}]\ "
    return statusline
endfunction

set statusline=%!MyStatusLine('Enter')

function! InsertStatuslineColor(mode)
    if a:mode == 'i'
        hi StatColor ctermbg=lightred
    elseif a:mode == 'r'
        hi StatColor ctermbg=magenta
    elseif a:mode == 'v'
        hi StatColor ctermbg=magenta
    else
        hi StatColor ctermbg=red
    endif
endfunction 

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi StatColor ctermbg=lightgreen ctermfg=black
