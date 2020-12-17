" folder plugins

call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-surround' " Description

Plug 'scrooloose/nerdtree' " Files explorer

Plug 'joshdick/onedark.vim'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes' " Themes

Plug 'Yggdroot/indentLine'

"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'Shougo/neco-syntax'  " Fuen

"Plug 'deoplete-plugins/deoplete-jedi'

Plug 'jiangmiao/auto-pairs'

"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'wokalski/autocomplete-flow'
  " For func argument completion
Plug 'Shougo/neosnippet'

Plug 'Shougo/neosnippet-snippets'

Plug 'neovim/node-host' , {'do':'npm install -g neovim'}

"Plug 'ternjs/tern_for_vim',{'do':'npm install && npm install -g tern'}

"Plug 'carlitux/deoplete-ternjs'

Plug 'vimlab/split-term.vim'

Plug 'mg979/vim-visual-multi', {'branch':'master'}
"git
Plug 'tpope/vim-fugitive'

Plug 'ervandew/supertab'

Plug 'xuyuanp/nerdtree-git-plugin'

Plug 'haya14busa/incsearch.vim'
"Javascript Plugins
Plug 'w0rp/ale'

Plug 'ryanoasis/vim-devicons'

Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'leafgarland/typescript-vim'

Plug 'peitalin/vim-jsx-typescript'

Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
"Plug 'leafoftree/vim-vue-plugin'

call plug#end()


"dark theme

"conf
" theme configuration
if (has("termguicolors"))
	set termguicolors
endif
set title "show name file in terminal
set number
set mouse=a

set cursorline
set colorcolumn=120

"identar
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set noshowmode
set conceallevel=0
"terminal conf
set splitbelow
set splitright
set clipboard=unnamedplus
set autoread

let g:NERDTreeChdirMode = 1
let g:NERDTreeShowHidden = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:indentLine_fileTypeExclude  = ['text', 'sh','help','terminal']
let g:indentLine_bufNameExclude = ['NERD_tree','term:.*']
let g:python_host_prog = '/home/edilson/anaconda3/bin/python3.8'
let g:node_host_prog = '/usr/local/bin/node'
"let g:deoplete#enable_at_startup = 1
let g:split_terminal_default_shell = "zsh"
"vue
let g:coc_node_path = '/usr/local/bin/node'
"multi cursors
let g:multi_cursor_use_default_mapping=0
" neoclide
let g:ale_fixers = {
			\ '*':['remove_trailing_lines','trim_whitespace'],
			\ 'javascript':['eslint'],
			\}

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
"let g:ale_fix_on_save = 1
let g:coc_global_extensions = [ 'coc-tsserver','coc-emmet','coc-css','coc-html','coc-json','coc-prettier','coc-python', 'coc-vetur', 'coc-git' ]
let g:vim_json_syntax_conceal = 0
let g:indentLine_setConceal = 0


"" Default mapping
"let g:multi_cursor_start_word_key      = '<C-n>'
"let g:multi_cursor_select_all_word_key = '<A-n>'
"let g:multi_cursor_start_key           = 'g<C-n>'
"let g:multi_cursor_select_all_key      = 'g<A-n>'
"let g:multi_cursor_next_key            = '<C-n>'
"let g:multi_cursor_prev_key            = '<C-p>'
"let g:multi_cursor_skip_key            = '<C-x>'
"let g:multi_cursor_quit_key            = '<Esc>'
"
"Supertab
let g:SuperTabDefaultCompletionType = '<C-n>'

"search
let g:incsearch#auto_nohlsearch = 1

"augroup deopleteCompleteDoneAu
"	autocmd!
"	autocmd CompleteDone * silent! pclose!
"augroup END
"
"
"
"themes

map <f2> :NERDTreeToggle<CR>
map <C-l> :tabn <CR>
map <A-e> :q <CR>
map <A-s> :w <CR>
map <A-f> :ALEFix <CR>
map <A-t> :Term <CR>
map <A-l> <C-w><Right>
map <A-h> <C-w><Left>
map <A-k> <C-w><Up>
map <A-j> <C-w><Down>
map <A-u> <Esc>
map <A-r> :NERDTreeRefreshRoot <CR>
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map! <A-CR> <Right>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug> (coc-implementation)
nmap <silent> gr <Plug> (coc-references)
syntax enable
colorscheme onedark "active theme
