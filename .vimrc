colorscheme slate
hi QuickFixLine guibg=#303030
set showmatch " Shows matching brackets
set ruler " Always shows location in file (line#)
set smarttab " Autotabs for certain code
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent
set laststatus=2 " for lightline plugin
set number
set incsearch
set clipboard=unnamedplus
set noswapfile
set hidden

" move vim tabs left and right.
noremap <A-Left>  :-tabmove<cr>
noremap <A-Right> :+tabmove<cr>

" ---Plugins--- "

" nerd-tree
map <S-E> :NERDTree<cr>

" fuzzy-finder
map <C-P> :Files<CR>

" vim-gitgutter view and highlights
highlight! link SignColumn LineNr
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

" vim-lsp
map gd :LspDefinition<cr>
map gD :LspDeclaration<cr>
map gt :LspTypeDefinition<cr>
map gr :LspReferences<cr>
map gs :LspDocumentSymbol<cr>
map gS :LspDocumentSymbolSearch<cr>
map gw :LspWorkspaceSymbolSearch<cr>
map gi :LspImplementation<cr>
map <S-K> :LspHover<cr>
let g:lsp_diagnostics_enabled = 0 " disable error reporting
let g:lsp_document_code_action_signs_enabled = 0 " disabled A> on signcolumn
let g:lsp_settings = {
\	'intelephense': {
\		'workspace_config': {
\			'intelephense': {
\				'stubs': [
\					'apache',
\					'bcmath',
\					'bz2',
\					'calendar',
\					'com_dotnet',
\					'Core',
\					'csprng',
\					'ctype',
\					'curl',
\					'date',
\					'dba',
\					'dom',
\					'enchant',
\					'exif',
\					'fileinfo',
\					'filter',
\					'fpm',
\					'ftp',
\					'gd',
\					'hash',
\					'iconv',
\					'imap',
\					'interbase',
\					'intl',
\					'json',
\					'ldap',
\					'libxml',
\					'mbstring',
\					'mcrypt',
\					'mssql',
\					'mysql',
\					'mysqli',
\					'oci8',
\					'odcb',
\					'openssl',
\					'password',
\					'pcntl',
\					'pcre',
\					'PDO',
\					'pdo_ibm',
\					'pdo_mysql',
\					'pdo_pgsql',
\					'pdo_sqlite',
\					'pgsql',
\					'Phar',
\					'posix',
\					'pspell',
\					'readline',
\					'recode',
\					'Reflection',
\					'regex',
\					'session',
\					'shmop',
\					'SimpleXML',
\					'snmp',
\					'soap',
\					'sockets',
\					'sodium',
\					'SPL',
\					'sqlite3',
\					'standard',
\					'superglobals',
\					'sybase',
\					'sysvmsg',
\					'sysvsem',
\					'sysvshm',
\					'tidy',
\					'tokenizer',
\					'wddx',
\					'xml',
\					'xmlreader',
\					'xmlrpc',
\					'xmlwriter',
\					'Zend OPcache',
\					'zip',
\					'zlib',
\					'phpunit',
\					'wordpress',
\				]
\			}
\		}
\	},
\}

" autocomplete
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin()
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'pangloss/vim-javascript'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
call plug#end()
