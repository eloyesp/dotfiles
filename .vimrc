" Vundle and bundles configuration
runtime bundles.vim

syntax enable
set background=dark
colorscheme solarized

set expandtab
set shiftwidth=2
set softtabstop=2
set pastetoggle=<F6>
set foldlevel=2

"
" Mappings
"

nmap ñr :wa\|!rake<CR>

let g:pandoc#formatting#mode = 'h'
let g:pandoc#formatting#textwitdth = 80
