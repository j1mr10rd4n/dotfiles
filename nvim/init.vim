" Set python host providers
" Used pyenv virtual environments from https://sk1u.com/blog/2018/04/16/pyenv-neovim
" https://github.com/deoplete-plugins/deoplete-jedi/wiki/Setting-up-Python-for-Neovim#a-brief-overview-of-neovim--python

let g:python_host_prog = '/Users/jim.riordan/.pyenv/versions/nvim-python-2.7.16/bin/python'
let g:python3_host_prog = '/Users/jim.riordan/.pyenv/versions/nvim-python-3.7.4/bin/python'

" let g:ruby_host_prog = 'RBENV_VERSION=2.6.3 RBENV_GEMSET=neovim rbenv exec neovim-ruby-host'

function! Dot(path)
  return "~/.config/nvim/" . a:path
endfunction

for file in split(glob(Dot("modules/*.vim")), "\n")
  execute "source" file
endfor

if filereadable("~/.nvim.local.vim")
  source ~/.nvim.local.vim
endif

