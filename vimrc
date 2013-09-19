set nocompatible                  " be iMproved
set tags=./tags,./TAGS,tags,TAGS; " search for tags or TAGS file on current dir and parents


" ------------------- VUNDLE -------------------------
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'majutsushi/tagbar'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/syntastic'
Bundle 'Valloric/YouCompleteMe'

" Gitub repos of the user 'vim-scripts'
" => can omit the username part
"Bundle 'L9'
"Bundle 'FuzzyFinder'

" Non github repos
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'git://git.code.sf.net/p/vim-latex/vim-latex'

" git repos on your local machine (ie. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
" ---------------- VUNDLE END -------------------------

" syntastic
let g:syntastic_c_checkers=['gcc','make','oclint']

" colorscheme
syntax enable
set t_Co=16
set background=light
colorscheme solarized

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

