" vim-fstline - Fixed status line
"
" Author:     Artur Pyszczuk <apyszczuk@gmail.com>
" License:    Same terms as Vim itself
" Website:    https://github.com/apyszczuk/vim-fstline

if exists ('g:loaded_fstline')
    finish
endif
let g:loaded_fstline = 1

set statusline=
set statusline+=%0*\ %{winnr()}:%n\                      " Window number, buffer number
set statusline+=%0*\ %<%f%m%r%h%w\                       " File path, modified, readonly, helpfile, preview
set statusline+=%=                                       " Right Side
set statusline+=%0*\ %Y\                                 " FileType
set statusline+=%0*\ %{''.(&fenc!=''?&fenc:&enc).''}     " Encoding
set statusline+=\ (%{&ff})                               " FileFormat (dos/unix..)
set statusline+=%0*\ %02l:%02v/%L\ (%3p%%)\              " Line number / total lines, percentage of document
