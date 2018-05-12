" My vim settings
:set relativenumber 
 
" Before using this .vimrc, install the 'vim-plug' plugin manager:
"
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
" 	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"

" vim-plugin plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree' " file explorer
Plug 'kien/ctrlp.vim' " file explorer
Plug 'tpope/vim-fugitive' " file explorer
Plug 'vim-syntastic/syntastic' " file explorer

" Initialize plugin system
call plug#end() " Automatically executes 'filetype plugin indent on' and 'syntax enable'

" NERD-Tree plugin config
autocmd vimenter * NERDTree " open a NERDTree automatically when vim starts up
autocmd bufenter * if (winnr("$") == 1  
			\ && exists("b:NERDTree")  
				\ && b:NERDTree.isTabTree()) 
					\ | q | endif " close vim if the only window left open is a NERDTree

" Syntastic plugin config
let g:syntastic_javascript_checkers = ['eslint']
