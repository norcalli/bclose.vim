if exists("g:loaded_bclose_vim") || &cp | finish | endif
let g:loaded_bclose_vim = 1

function! s:bclose(bang)
  let bufnr = bufnr("%")
  execute "set hidden=delete | bnext" . a:bang
  if bufnr == bufnr("%")
    execute "set hidden=delete | enew" . a:bang
  endif
endfun

command! -bang Bclose set bufhidden=delete | bnext<bang>
