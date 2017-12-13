.vimrc
"*****************************************************************************
" OCaml
"*****************************************************************************"
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute 'set rtp+=' . g:opamshare . '/merlin/vim'
 
let g:syntastic_ocaml_checkers = ['merlin']
 
execute 'set rtp^=' . g:opamshare . '/ocp-indent/vim'
 
function! s:ocaml_format()
let now_line = line('.')
exec ':%! ocp-indent'
exec ':' . now_line
endfunction
 
augroup ocaml_format
autocmd!
autocmd BufWrite,FileWritePre,FileAppendPre *.mli\= call s:ocaml_format()
augroup END
