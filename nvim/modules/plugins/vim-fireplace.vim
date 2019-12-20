autocmd FileType clojure nnoremap <buffer> <localleader>re :Eval<cr>
autocmd FileType clojure vnoremap <buffer> <localleader>re :Eval<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rf :%Eval<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rr :Require<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rR :Require!<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rt :RunTests<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rl :Last<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rc :FireplaceConnect<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rp :Piggieback (adzerk.boot-cljs-repl/repl-env)<cr>
autocmd FileType clojure nnoremap <buffer> gd :normal [<c-d><cr>

" TODO - use localvimrc plugin and move these to .lvimrc?
" see https://oli.me.uk/2018-05-04-editing-clojure-with-neovim/
" currently ports are hardcoded - won't work with boot
autocmd FileType clojure nnoremap <buffer> <silent> <localleader>rA :FireplaceConnect nrepl://localhost:9001 %{getcwd()}<cr>
autocmd FileType clojure nnoremap <buffer> <silent> <localleader>rU :FireplaceConnect nrepl://localhost:9002 %{getcwd()}<cr>:e dev/user.clj<cr>:Eval (cljs-repl)<cr>:bd<cr>
autocmd FileType clojure nnoremap <buffer> <silent> <localleader>rx :Eval (do (require 'clojure.tools.namespace.repl) (bounce.system/stop!) (clojure.tools.namespace.repl/set-refresh-dirs "src/clj" "src/cljc") (clojure.tools.namespace.repl/refresh :after 'bounce.system/start!))<cr>
autocmd FileType clojure nnoremap <buffer> <silent> <localleader>rX :Eval (do (require 'clojure.tools.namespace.repl) (bounce.system/stop!) (clojure.tools.namespace.repl/clear) (clojure.tools.namespace.repl/set-refresh-dirs "src/clj" "src/cljc") (clojure.tools.namespace.repl/refresh-all :after 'bounce.system/start!))<cr>
