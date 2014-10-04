Settings for `/etc/vim/vimrc.local`

```
set nocp
set expandtab
set shiftwidth=4
set tabstop=4
set sts=4
set showmatch   " match bracket
set autoindent
" set smartindent
set nowrap
set tw=500
set lbr
set number  " show line number
set guifont=Monospace\ 11
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,GB18030,cp936,big5,euc-jp,euc-kr,latin1
set helplang=cn
colorscheme tangoshady  " place your tangoshady.vim at ~/.vim/colors/
"set mouse=v

" omni completion
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
imap <silent> ` <C-X><C-O>  " use ` to trigger omnifunc
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
```