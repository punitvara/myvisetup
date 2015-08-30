set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"let Vundle manage Vundle
""required!
Bundle 'gmarik/vundle'

"The bundles you install will be listed here

filetype plugin indent on 
"The rest of your config follows here
augroup vimrc_autocmds
		autocmd!
		"highlight characters past column 120 
		autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
		autocmd FileType python match Excess /\%120v.*/
		autocmd FileType python set nowrap
		augroup END
		Bundle 'Lockaltog/powerline',{'rtp':'powerline/bindings/vim/'}
"Powerline setup 
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
map <F2> :NERDTreeToggle<CR>
