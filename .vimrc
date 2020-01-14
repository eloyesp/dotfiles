" Vundle and bundles configuration
runtime bundles.vim

syntax enable
set background=dark
colorscheme solarized

set expandtab
set shiftwidth=2
set softtabstop=2
set pastetoggle=<F5>
set foldlevel=2
set winheight=10
set winminheight=2

set ignorecase
set smartcase

" Make gitgutter happy
set updatetime=1000

"
" Mappings
"

nmap ñr :wa\|!rake<CR>

let g:pandoc#formatting#mode = 'h'
let g:pandoc#formatting#textwitdth = 80

let g:reek_on_loading = 0

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" use // as * in visual mode
vnoremap // y/\V<C-r>=escape(@",'/\')<CR><CR>

let g:ledger_bin = 'ledger'
let g:ledger_default_commodity = '$'
let g:ledger_commodity_sep = ' '
