set mouse=a
set encoding=utf-8
set number
set noswapfile
set scrolloff=10

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
filetype indent on

set smartindent
set tabstop=2
set expandtab
set shiftwidth=2

inoremap jk <esc>
autocmd FileType markdown nnoremap <buffer> <C-f> :!pandoc % --quiet --from=gfm --to=pdf --pdf-engine=xelatex -V mainfont="Roboto" -o %:r.pdf <Enter>

call plug#begin()

" Autosave
Plug 'Pocco81/auto-save.nvim'

" Appearence
Plug 'arcticicestudio/nord-vim'

Plug 'vim-airline/vim-airline'
  let g:airline#extensions#whitespace#enabled = 0

Plug 'vim-airline/vim-airline-themes'

" For TeX
Plug 'sirver/ultisnips'
    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = '<tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

Plug 'lervag/vimtex'
    let g:tex_flavor='latex'
    let g:vimtex_view_method='zathura'
    let g:vimtex_quickfix_mode=0

Plug 'KeitaNakamura/tex-conceal.vim'
    set conceallevel=1
    let g:tex_conceal='abdmg'
    hi Conceal ctermbg=none

" Markdown
"Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'iamcco/markdown-preview.nvim', { 'do': ':call mkdp#util#install()', 'for': 'markdown' }
    let g:mkdp_filetypes = ['markdown']
    let g:mkdp_theme = 'dark'

call plug#end()

" Set colorcheme
colorscheme nord

