nnoremap <space> <nop>
let mapleader = "\<space>"
let maplocalleader = ","

vnoremap jk <esc>
tnoremap jk <c-\><c-n>
inoremap jkl <esc> :update<cr>
nnoremap jkl :update<cr>

noremap <silent> <leader>/ :set hlsearch!<cr>    " toggle search highlight

nnoremap <leader>wm :tab sp<CR>
nnoremap <leader>bD :bdelete!<CR>
nnoremap <leader>wo :only<cr>
nnoremap <leader>to :tabonly<cr>
nnoremap <leader>bo :call <SID>delete_hidden_buffers()<CR>
nnoremap <leader>zz :call <SID>correct_to_first_spelling_suggestion()<CR>
nnoremap <leader>tw :call <SID>trim_trailing_whitespace()<CR>
nnoremap <leader>sw :mksession! .quicksave.vim<CR>:echo "Session saved."<CR>
nnoremap <leader>sr :source .quicksave.vim<CR>:echo "Session loaded."<CR>

""     " Edit / apply .vimrc
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

function! s:delete_hidden_buffers()
  let tpbl=[]
  call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
  for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
    silent execute 'bwipeout' buf
  endfor
endfunction

function! s:correct_to_first_spelling_suggestion()
  normal! 1z=
endfunction

function! s:trim_trailing_whitespace()
  %s/\s\+$//e
endfunction

function! DoPrettyXML()
  " save the filetype so we can restore it later
  let l:origft = &ft
  set ft=
  " delete the xml header if it exists. This will
  " permit us to surround the document with fake tags
  " without creating invalid xml.
  1s/<?xml .*?>//e
  " insert fake tags around the entire document.
  " This will permit us to pretty-format excerpts of
  " XML that may contain multiple top-level elements.
  0put ='<PrettyXML>'
  $put ='</PrettyXML>'
  silent %!xmllint --format -
  " xmllint will insert an <?xml?> header. it's easy enough to delete
  " if you don't want it.
  " delete the fake tags
  2d
  $d
  " restore the 'normal' indentation, which is one extra level
  " too deep due to the extra tags we wrapped around the document.
  silent %<
  " back to home
  1
  " restore the filetype
  exe "set ft=" . l:origft
endfunction
command! PrettyXML call DoPrettyXML()
