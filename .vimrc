" My vim settings
:set relativenumber 
 
" Before using this .vimrc, install the 'vim-plug' plugin manager:
"
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
" 	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim-plugin plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree' " file explorer
Plug 'kien/ctrlp.vim' " fuzzy file search
Plug 'tpope/vim-fugitive' " git plugin
Plug 'vim-syntastic/syntastic' " syntax checker

" Initialize plugin system
call plug#end() " Automatically executes 'filetype plugin indent on' and 'syntax enable'

" NERD-Tree plugin config
autocmd vimenter * NERDTree " open a NERDTree automatically when vim starts up
autocmd vimenter * wincmd p " put focus back on previous window
autocmd bufenter * if (winnr("$") == 1  
			\ && exists("b:NERDTree")  
				\ && b:NERDTree.isTabTree()) 
					\ | q | endif " close vim if the only window left open is a NERDTree

" Syntastic plugin config
let g:syntastic_javascript_checkers = ['eslint']

