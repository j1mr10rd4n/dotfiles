nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gp :Gpush<cr>
nnoremap <leader>gl :Gpull<cr>
nnoremap <leader>gf :Gfetch<cr>
nnoremap <leader>gcc :Gcommit --verbose<cr>
nnoremap <leader>gca :Gcommit --all --verbose<cr>
nnoremap <leader>gdl :diffget LOCAL<CR>
nnoremap <leader>gdr :diffget REMOTE<CR>

" see https://github.com/tpope/vim-fugitive/issues/957#issuecomment-352774977
augroup nvim_term
  au!
  au TermOpen * startinsert
  au TermClose * stopinsert
augroup END
