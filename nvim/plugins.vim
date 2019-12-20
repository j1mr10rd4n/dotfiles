" Modeline and Notes {
"   vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=4 foldmethod=marker nospell:
" }
"
" Experimental {
    " Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
" }

" Defaults {
    Plug 'liuchengxu/vim-better-default'                                     " better defaults
" }

" UI {
    Plug 'mhinz/vim-startify'                                                " startup screen
    Plug 'rafi/awesome-vim-colorschemes'                                     " colors
    Plug 'frankier/neovim-colors-solarized-truecolor-only'
    Plug 'mhartington/oceanic-next'
    Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'   " airline bar
    Plug 'myusuf3/numbers.vim'                                               " numbers on steroids
    Plug 'ryanoasis/vim-devicons'                                            " pretty glyphs
    Plug 'luochen1990/rainbow'                                               " rainbow parens
    Plug 'gorodinskiy/vim-coloresque'
" }

" File Finding {
    Plug 'scrooloose/nerdtree'
    " consider
    " Plug 'jistr/vim-nerdtree-tabs'
    " if want a single nerdtree "panel" in all open tabs
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug '/usr/local/opt/fzf'                   " fzf as installed by homebrew:::set
    Plug 'junegunn/fzf.vim'
    "Plug 'tpope/vim-vineagar'
" }

" Version Control {
    Plug 'tpope/vim-fugitive'                                                " git awesomeness
    Plug 'chrisbra/vim-diff-enhanced'                                        " vim diff enhanced
    Plug 'airblade/vim-gitgutter'                                            " git status in ruler
" }

" Motion {
    Plug 'vim-scripts/matchit.zip'
    Plug 'easymotion/vim-easymotion'
    Plug 'tpope/vim-unimpaired'
    Plug 'tpope/vim-abolish'
    Plug 'tpope/vim-repeat'
" }

" General Writing {
    Plug 'tpope/vim-surround'                                                " quickly surround words with quotes, brackets etc
    Plug 'ConradIrwin/vim-bracketed-paste'                                   " automatic handling of bracketed paste mode
    Plug 'terryma/vim-multiple-cursors'                                      " sublime-like multi site editing
    Plug 'scrooloose/nerdcommenter'                                          " toggle comments
    Plug 'mbbill/undotree'                                                   " better undo history
                                                                             " could also check https://github.com/simnalamburt/vim-mundo
    " Plug 'jiangmiao/auto-pairs'
    Plug 'mtth/scratch.vim'                                                  " scratch files
    Plug 'tpope/vim-sleuth'                                                  " automagically infer shiftwidth/expandtab settings
" }

" Languages and Syntax {
    Plug 'w0rp/ale'                                                          " async linting

    " Clojure {
        Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
        Plug 'guns/vim-clojure-static'
        Plug 'vim-scripts/paredit.vim'
        Plug 'guns/vim-sexp'
        Plug 'tpope/vim-sexp-mappings-for-regular-people'
    " }

    " Javascript {
        Plug 'pangloss/vim-javascript'
        " or Plug 'jelera/vim-javascript-syntax'
        Plug 'othree/javascript-libraries-syntax.vim'
        Plug 'othree/yajs.vim'
        Plug 'othree/es.next.syntax.vim'
        Plug 'othree/html5.vim'
    " }

    " Docker {
        Plug 'docker/docker', {'rtp': '/contrib/syntax/vim/'}
    " }

    " Java {
        Plug 'tfnico/vim-gradle'
    " }
    
    " C# {
        Plug 'OmniSharp/omnisharp-vim'
    " }

" }

" Completion {
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'ervandew/supertab'
    Plug 'clojure-vim/async-clj-omni'                                            " async clojure completion
" }

" Views and Sessions {
     Plug 'vim-scripts/restore_view.vim'                                     " restore cursor pos / folding when re-opening file
     Plug 'vim-scripts/sessionman.vim'
" }

" Utils {
    Plug 'guns/xterm-color-table.vim'                                            " pretty terminal colors table
    Plug 'tpope/vim-dispatch'                                                    " background processes - e.g. builds/tests
    Plug 'tpope/vim-dadbod'                                                      " database browsing in vim?? 
" }


" try these suggestions
" from https://github.com/Olical/spacy-neovim
" https://github.com/PeterRincker/vim-argumentative
" https://github.com/clojure-vim/async-clj-omni
" https://github.com/radenling/vim-dispatch-neovim
" https://github.com/tpope/vim-eunuch
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" " Plugins {
""     call plug#begin('~/.dotfiles/vim/.vim/bundle')
""
""
""
""     " Utils {
""
""     " }
""
""     " Completion {
""         Plug 'zchee/deoplete-zsh'                   " zsh completions
""         Plug 'Shougo/neco-vim'                      " vim completions
""
""     " }
""
""     " Languages and Syntax {
""         Plug 'vim-syntastic/syntastic'              " syntax checking (remember is different from syntax highlighting!)
""
""
""     " }
""
""     call plug#end()
"" " }
""
"" " Vim UI {
""
""     set tabpagemax=15                                    " only show 15 tabs
""     set cursorline                                       " Highlight current line
""     highlight clear SignColumn                           " SignColumn should match background
""     highlight clear LineNr                               " current line number row will have same background color in relative mode
""     "highlight clear CursorLineNr                        " remove highlight color from current line number
""     set backspace=indent,eol,start                       " backspace for dummies
""     set linespace=0                                      " no extra spaces between rows
""     set showmatch                                        " show matching brackets/parenthesis
""     set incsearch                                        " find as you type search
""     set hlsearch                                         " highlight search terms
""     set winminheight=0                                   " windows can be 0 line high
""     set ignorecase                                       " case insensitive search
""     set smartcase                                        " case sensitive when uc present
""     set wildmenu                                         " show list instead of just completing
""     set wildmode=list:longest,full                       " command <Tab> completion, list matches, then longest common part, then all.
""     set whichwrap=b,s,h,l,<,>,[,]                        " backspace and cursor keys wrap too
""     set scrolljump=5                                     " lines to scroll when cursor leaves screen
""     set scrolloff=3                                      " minimum lines to keep above and below cursor
""     set foldenable                                       " auto fold code
""     set listchars=tab:›\ ,trail:•,extends:#,nbsp:.,eol:¬ " highlight problematic whitespace
""     set nolist
""     set mouse=a                                          " enable mouse
""     set mousehide                                        " hide mouse cursor while typing
""     set clipboard=unnamed                                " use * register for copy-paste
""     set virtualedit=onemore                              " allow for cursor beyond last character
""     set history=1000                                     " store a ton of history (default is 20)
""     set nospell                                          " spell checking off
""     set hidden                                           " allow buffer switching without saving
""     set splitright                                       " puts new vsplit windows to the right of the current
""     set splitbelow                                       " puts new split windows to the bottom of the current
""     set laststatus=2                                     " always display the statusline in all windows
""     set showtabline=2                                    " always display the tabline, even if there is only one tab
""     set noshowmode                                       " hide the default mode text (e.g. -- INSERT -- below the statusline)
""     set timeout
""     set ttimeout
""     set timeoutlen=200
""     set ttimeoutlen=100
"" " }
""
"" " Formatting {
""     set nowrap                                           " do not wrap long lines
""     set autoindent                                       " indent at the same level of the previous line
""     set shiftwidth=4                                     " use indents of 4 spaces
""     set expandtab                                        " tabs are spaces, not tabs
""     set tabstop=4                                        " an indentation every four columns
""     set softtabstop=4                                    " let backspace delete indent
""     set nojoinspaces                                     " prevents inserting two spaces after punctuation on a join (J)
""     "set matchpairs+=<:>                                 " match, to be used with %
""     "set pastetoggle=<F12>                               " pastetoggle (sane indentation on pastes)
""     "set comments=sl:/*,mb:*,elx:*/                      " auto format comment blocks
""     set iskeyword-=.                                     " '.' is an end of word designator
""     set iskeyword-=#                                     " '#' is an end of word designator
""     set iskeyword-=-                                     " '-' is an end of word designator
""
""     " Remove trailing whitespaces and ^M chars
""     autocmd FileType c,clojure,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl,sql autocmd BufWritePre <buffer> call StripTrailingWhitespace()
""
""     autocmd FileType haskell,puppet,ruby,yml setlocal expandtab shiftwidth=2 softtabstop=2
""     " preceding line best in a plugin but here for now.
"" " }
""
""
"" " Key Mappings {
""
""     " Movement keys {
""         nnoremap <up> <nop>
""         nnoremap <down> <nop>
""         nnoremap <left> <nop>
""         nnoremap <right> <nop>
""         inoremap <up> <nop>
""         inoremap <down> <nop>
""         inoremap <left> <nop>
""         inoremap <right> <nop>
""         " disable escape in insert mode
""         inoremap <esc> <nop>
""         " but still allow control codes from e.g. mouse
""         inoremap <esc>^[ <esc>^[
""         " disable escape in visual mode
""         vnoremap <esc> <nop>
""         " but still allow control codes from e.g. mouse
""         vnoremap <esc>^[ <esc>^[
""         "    nnoremap j gj
""         "    nnoremap k gk
""     " }
""
""
""
""
""
""     " Yank from the cursor to the end of the line, to be consistent with C and D.
""     nnoremap Y y$
""
""     " Easier moving in tabs and windows
""     " The lines conflict with the default digraph mapping of <C-K>
""     noremap <C-J> <C-W>j<C-W>_
""     noremap <C-K> <C-W>k<C-W>_
""     noremap <C-L> <C-W>l<C-W>_
""     noremap <C-H> <C-W>h<C-W>_
""
""     " End/Start of line motion keys act relative to row/wrap width in the
""     " presence of `:set wrap`, and relative to line for `:set nowrap`.
""     " Default vim behaviour is to act relative to text line in both cases
""     " Same for 0, home, end, etc
""     function! WrapRelativeMotion(key, ...)
""         let vis_sel=""
""         if a:0
""             let vis_sel="gv"
""         endif
""         if &wrap
""             execute "normal!" vis_sel . "g" . a:key
""         else
""             execute "normal!" vis_sel . a:key
""         endif
""     endfunction
""
""     " Map g* keys in Normal, Operator-pending, and Visual+select
""     noremap $ :call WrapRelativeMotion("$")<CR>
""     noremap <End> :call WrapRelativeMotion("$")<CR>
""     noremap 0 :call WrapRelativeMotion("0")<CR>
""     noremap <Home> :call WrapRelativeMotion("0")<CR>
""     noremap ^ :call WrapRelativeMotion("^")<CR>
""     " Overwrite the operator pending $/<End> mappings from above
""     " to force inclusive motion with :execute normal!
""     onoremap $ v:call WrapRelativeMotion("$")<CR>
""     onoremap <End> v:call WrapRelativeMotion("$")<CR>
""     " Overwrite the Visual+select mode mappings from above
""     " to ensure the correct vis_sel flag is passed to function
""     vnoremap $ :<C-U>call WrapRelativeMotion("$", 1)<CR>
""     vnoremap <End> :<C-U>call WrapRelativeMotion("$", 1)<CR>
""     vnoremap 0 :<C-U>call WrapRelativeMotion("0", 1)<CR>
""     vnoremap <Home> :<C-U>call WrapRelativeMotion("0", 1)<CR>
""     vnoremap ^ :<C-U>call WrapRelativeMotion("^", 1)<CR>
""
""     " Stupid shift key fixes
""     command! -bang -nargs=* -complete=file E e<bang> <args>
""     command! -bang -nargs=* -complete=file W w<bang> <args>
""     command! -bang -nargs=* -complete=file Wq wq<bang> <args>
""     command! -bang -nargs=* -complete=file WQ wq<bang> <args>
""     command! -bang Wa wa<bang>
""     command! -bang WA wa<bang>
""     command! -bang Q q<bang>
""     command! -bang QA qa<bang>
""     command! -bang Qa qa<bang>
""
""     " Shortcuts
""     " Change Working Directory to that of the current file
""     cmap cwd lcd %:p:h
""     cmap cd. lcd %:p:h
""
""     " Visual shifting (does not exit Visual mode)
""     vnoremap < <gv
""     vnoremap > >gv
""
""     " Allow using the repeat operator with a visual selection (!)
""     " http://stackoverflow.com/a/8064607/127816
""     vnoremap . :normal .<CR>
""
""     " For when you forget to sudo.. Really Write the file.
""     cmap w!! w !sudo tee % >/dev/null
""
""     " Some helpers to edit mode
""     " http://vimcasts.org/e/14
""     cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
""     map <leader>ew :e %%
""     map <leader>es :sp %%
""     map <leader>ev :vsp %%
""     map <leader>et :tabe %%
""
""     " Adjust viewports to the same size
""     map <leader>= <C-w>=
""
""     " Map <Leader>ff to display all lines with keyword under cursor and ask which one to jump to
""     nmap <leader>ff [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>
""
""     " Easier horizontal scrolling
""     map zl zL
""     map zh zH
""
""     " Easier formatting
""     nnoremap <silent> <leader>q gwip
""
"" " }
""
""
""
