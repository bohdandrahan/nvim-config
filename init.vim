colorscheme evening
set ignorecase
set number

"MACROS
let @y="\"+y" 				"save to system clipboard using @y 


"STATUS BAR SETTINGS
function! SetNormalColor()
  hi statusline ctermbg=DarkMagenta ctermfg=Yellow
endfunction

function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    hi statusline ctermbg=yellow ctermfg=DarkMagenta
  elseif a:mode == 'r'
    hi statusline ctermbg=Red ctermfg=DarkMagenta
  else
    hi statusline ctermbg=Red ctermfg=DarkMagenta
  endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * call SetNormalColor()

call SetNormalColor()

set statusline=%f                           " file name
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%y      "filetype
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=\ %=                        " align left
set statusline+=Line:%l/%L[%p%%]            " line X of Y [percent of file]
set statusline+=\ Col:%c                    " current column
" END OF STATUS BAR SETTINGS
