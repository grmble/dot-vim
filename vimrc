set et
set ts=4
set sts=4
set sw=4
set autoindent

runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
filetype plugin indent on

autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
"autocmd BufNewFile,BufReadPost *.coffee setlocal omnifunc=nodejscomplete#CompleteJS"

if executable('coffeetags')
    let g:tagbar_type_coffee = {
          \ 'ctagsbin' : 'coffeetags',
          \ 'ctagsargs' : '',
          \ 'kinds' : [
            \ 'f:functions',
            \ 'o:object',
          \ ],
          \ 'sro' : ".",
          \ 'kind2scope' : {
            \ 'f' : 'object',
            \ 'o' : 'object',
          \ }
        \ }
  endif

set pastetoggle=<F2>

nmap <F5> :w<CR>:make<CR><CR>:cw<CR>
nmap <F7> :NERDTree<CR>
nmap <F8> :TagbarToggle<CR>
