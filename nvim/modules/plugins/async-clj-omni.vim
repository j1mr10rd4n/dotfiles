" You also need to include the following lines in your init.vim:

let g:deoplete#keyword_patterns = {}
let g:deoplete#keyword_patterns.clojure = '[\w!$%&*+/:<=>?@\^_~\-\.#]*'

" As I improve them, they may be PR'd into deoplete.vim, but I'm not yet comfortable suggesting that change upstream.

