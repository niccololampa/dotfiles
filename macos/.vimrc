"NICCOLO LAMPA MAC VIM CONFIG

"VIM GENRAL SETTINGS
  set nocompatible              " be iMproved, required. use vim defaults
  filetype off                  " required
  set number "code lines number
  "set paste "Conflict with auto-pairs always in paste mode. mimic normal pasting in vim. no weird spaces
  "set t_Co=256 " For colors oceanic next. For google/aws shell issue. if possible use termguicolors
 "if (has("termguicolors"))
  "set termguicolors
  "endif
  set title
  set showcmd "display incomplete commands?
  set cursorline "highlights current line where cursor is
  set lazyredraw "Performance improvement.When this option is set, the screen will not be redrawn while executing macrosi
  set wildmenu "commandline auto completion options. Just tab
  set showmatch "show matching [] , (), {} when hovered
  set incsearch "instant search execution while you enter string
  set hlsearch "turns on search highlighting
  "set clipboard=unnamedplus "pasting / copying from vim to other app vice versa. (Comment out for MAC homebrew vim)
  set clipboard=unnamed "MAC to copy from vim to clipboard
" set clipboard=unnamedplus,autoselect,exclude:cons\\\\|linux
  " set clipboard^=unnamed
  set expandtab "To insert space characters whenever the tab key is pressed
  set shiftwidth=2 " number of space char for indetation
  set softtabstop=2 " turn Tab into a space automatically. tab is inconsistent with editors.
  set tabstop=2 "number of space characters that will be inserted when tab.
  set smarttab "a <Tab> in front of a line inserts blanks based to 'shiftwidth'.'tabstop' or 'softtabstop' is used in other places
  set ruler "show the cursor position
  set backspace=indent,eol,start "overwrites backspace default (if any)  for vim deleting indentation, line breaks, pre-existing characters"
  set splitbelow "always below when splitting vertically
  set splitright "always right when splitting horizontally

"for backup when something vim crashes
  set backup
  set backupcopy=yes
  set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
  set backupskip=/tmp/*,/private/tmp/*
  set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
  set writebackup

"cursor shape
  let &t_SI = "\<Esc>[6 q"
  let &t_SR = "\<Esc>[4 q"
  let &t_EI = "\<Esc>[2 q"

"relative/absolute line number toggling
  set number relativenumber
  augroup numbertoggle
   autocmd!
   autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
   autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
  augroup END

 "VIM plugins
  if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif

  call plug#begin ('~/.vim/plugged')
    Plug 'VundleVim/Vundle.vim' "plugin Installer
    Plug 'christoomey/vim-tmux-navigator' "need to configure .tmux.conf to work
    Plug 'easymotion/vim-easymotion' "provides easy movement to results when searching. Will provide target.
    Plug 'preservim/nerdtree' "tree file explorer
    "Plug 'mhartington/oceanic-next' "syntax coloring and airline coloring theme.
    Plug 'altercation/vim-colors-solarized'
    Plug 'lambdalisue/glyph-palette.vim' "colors for applying universal color to NerdFonts
    Plug 'Xuyuanp/nerdtree-git-plugin' "git markings for NERDTree
    Plug 'vim-airline/vim-airline' "status on the  bottom of vim. tabline top of  vim
    Plug 'vim-airline/vim-airline-themes'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "filter/finder for command line. Can be used for any list files, command line history, process, hostnames, bookmarks, git commits etc.
    Plug 'junegunn/fzf.vim' "plugin that will allow fzf to be used in vim
    Plug 'tpope/vim-fugitive' "git plugin
    Plug 'airblade/vim-gitgutter' "shows git diff in the sign column
    Plug 'wincent/terminus' "enhanced terminal integration for vim. cursor shape, mouse support, focus reporting, bracketed paste mode.
    Plug 'kristijanhusak/vim-carbon-now-sh' "plugin for opening selected content in browser
    "Tabular before vim-markdown
    Plug 'godlygeek/tabular' "lPugin to align text tabularly. Initiate by :Tab /=. Equal can be any reference charater. Can select range from visual line
    Plug 'dense-analysis/ale' "vim prettier and eslint intergration
    Plug 'tpope/vim-sleuth' "This plugin automatically adjusts 'shiftwidth' and 'expandtab' heuristically based on the current file, or, in the case the current file is new, blank, or otherwise insufficient, by looking at other files of the same type in the current and parent directories. In lieu of adjusting 'softtabstop', 'smarttab' is enabled.
    Plug 'tpope/vim-surround' " provides mappings to easily delete, change and add such surroundings in pairs.
    Plug 'jiangmiao/auto-pairs' "Insert or delete brackets, parens, quotes in pair.
    Plug 'alvan/vim-closetag' "will automatically close tags once > is pressed. example <table> </table>
    Plug 'sheerun/vim-polyglot' "prog language pack vim
    Plug 'pangloss/vim-javascript'    "JavaScript support
    Plug 'leafgarland/typescript-vim' "TypeScript syntax
    Plug 'maxmellon/vim-jsx-pretty'   "JS and JSX syntax
    Plug 'jparise/vim-graphql'        "GraphQL syntax
    Plug 'quramy/tsuquyomi' "provides TS omincompletyions, show location where symbol is referenced. navigation to symbol, display list of syntax and semantics error needs npm -g install typescript
    Plug 'tpope/vim-commentary' "easy commenting of code. type gc line. gcap for paragraph. Can be in visual mode as well. gcgc to uncomment.
    Plug 'ycm-core/YouCompleteMe' "code completion engine for VIM. Needs additional MAC/ Linux setup to work. See Docs. Be sure to install npm nodejs mono-complete golang-go properly. Check if you want other languages. if yes insert in intall.py --all. Installed c#, go, javascript typescript. Also tern node_modules in YCM folder to be deleted(as of latest install)
    Plug 'SirVer/ultisnips' "code snippets engine. Use with honza/vim-snippets. Check if you need config in relation to YouCompleteMe for tabbing
    Plug 'honza/vim-snippets' "FIXME code snippets source. PROBLEM  WORKING WITH YouCompleteMe snip does not load
    Plug 'nathanaelkane/vim-indent-guides' " visually displaying indent levels in Vim.
    Plug 'ryanoasis/vim-devicons' "always place at the end
    " Plug 'haya14busa/vim-poweryank' "DISABLE FOR MAC LOCAL for ssh yanking and copying to clipboard
  call plug#end()

filetype plugin indent on    "required insert after plugin install

"poweryank for SSH (LINUX) move over to the end of the line will copy whole
"line DISABLE FOR MAC LOCAL.
  "map <Leader>y <Plug>(operator-poweryank-osc52)

"NERDTREE
  let NERDTreeMinimalUI = 1 "Hide help text
  let g:NERDTreeAutoDeleteBuffer = 1
  let NERDTreeShowLineNumbers = 1
  let NERDTreeDirArrows = 1
  "let NERDTreeQuitOnOpen = 1
  "Hide/show nerdtree \n
    nnoremap <leader>n :NERDTreeToggle<CR>
    nnoremap <leader>N :NERDTreeFind<CR>
  " For NERDTree after a re-source, fix syntax matching issues (concealing brackets for icons):
   if exists('g:loaded_webdevicons')
      call webdevicons#refresh()
    endif
  "close vim if only nerdtree is open (comment out. Buggy closes all buffers when :bd)
    " autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
  "open nerdtree when no file is specified. plain vim, not vim .
  "autocmd StdinReadPre * let s:std_in=1
  "autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
  "start vim when opening a directory vim .
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

  "syntax coloring
  syntax enable "must be inserted here.
  "Download solarize package and apply to terminal theme. Maybe different from
  "mac vim. See which is applicable
"  let g:solarized_termcolors=256 "needed for a non GUI terminal.
"to solarized transparent
  let g:solarized_termtrans=1
  colorscheme solarized
  "colorscheme OceanicNext
  "let g:oceanic_next_terminal_bold = 1
  "let g:oceanic_next_terminal_italic = 1 "do not activate if term does not support italic. will highlight comments and <>

 "make vim transparent and take color of terminal
  set background=dark
  "must come after color scheme to make BG transparent
  highlight Normal guibg=NONE ctermbg=NONE

"For vimdevicons
  set encoding=utf8
  set guifont=Hack\ Nerd\ Font\ 11
  let g:airline_powerline_fonts = 1

"glyph-pallette for colors of vim devicons
  augroup my-glyph-palette
    autocmd! *
    autocmd FileType fern call glyph_palette#apply()
    autocmd FileType nerdtree,startify call glyph_palette#apply()
  augroup END

"vim-airline-theme
  set laststatus=2 "shows the status line at the bottom of vim where airline is inserted
  let g:airline_theme='solarized'
  "let g:airline_theme='oceanicnext'
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

"vim-indent-guides settings
  let g:indent_guides_enable_on_vim_startup = 1 "enabling on startup
  "this is for nicco black background
  "let g:indent_guides_auto_colors = 0 "custom color
    "autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=NONE   ctermbg=233
    "autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=NONE ctermbg=234

let g:jsx_ext_required = 0 "to allow .js for JSX plugins that require .jsx

"ALE
  let g:ale_linters = {
  \   'javascript': ['eslint'],
  \   'typescript': ['tslint'],
  \   'python' : ['flake8','pylint']
  \}

  "let g:ale_python_pylint_options = '--load-plugins pylint_django'

  let g:ale_fixers = {
  \   'javascript': ['eslint'],
  \   "json": ["eslint", "prettier"],
  \   "graphql": ["eslint", "prettier"],
  \   "typescript": ["tslint", "prettier"],
  \   "typescriptreact": ["eslint", "prettier"],
  \   "go": ["gofmt"],
  \   "python": ["remove_trailing_lines", "isort", "ale#fixers#generic_python#BreakUpLongLines", "yapf"],
  \   "java": ["google_java_format"],
  \   "css": ["prettier"],
  \   "markdown": ["prettier"],
  \   "yaml": ["prettier"],
  \   "html": ["prettier"],
  \   "*": ["remove_trailing_lines", "trim_whitespace"]
  \}

  let g:ale_javascript_eslint_suppress_eslintignore = 1
  let g:ale_sign_error = '✘'
  let g:ale_sign_warning = '⚠'
  let g:ale_lint_on_enter = 0
  let g:ale_lint_on_text_changed =0
  highlight ALEErrorSign ctermbg=NONE ctermfg=red
  highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
  let g:ale_linters_explicit = 1 "no conflict with other linters
  let g:ale_lint_on_save = 1
  let g:ale_fix_on_save = 1

"disable polyglot on typescript temporarily
 " let g:polyglot_disabled = ["typescript", "typescriptreact"]

"vim jsx pretty
  let g:vim_jsx_pretty_colorful_config = 1

"vim-closetag settings
  let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.js,*.ts,*.tsx'
  let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js,*.ts,*.tsx'
  let g:closetag_filetypes = 'html,xhtml,phtml,jsx,js,ts,tsx'
  let g:closetag_xhtml_filetypes = 'xhtml,jsx,js,ts,tsx'
  let g:closetag_emptyTags_caseSensitive = 1

"YouCompleteMe settings
  "Start autocompletion after 4 chars
  let g:ycm_min_num_of_chars_for_completion = 4
  let g:ycm_min_num_identifier_candidate_chars = 4
  let g:ycm_enable_diagnostic_highlighting = 0
  "Don't show YCMs preview window
  set completeopt-=preview
  let g:ycm_add_preview_to_completeopt = 0

" fzf settings
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let g:fzf_preview_window = 'right:60%'

"CUSTOM KEY MAPPINGS
  "Hide/show nerdtree \n
  nnoremap <leader>n :NERDTreeToggle<CR>
  "nnoremap <leader>N :NERDTreeFind<CR>

  "list git included only files using fzf
  nnoremap <c-p> :GFiles<CR>
  "search for files using fzf
  nnoremap gf :Files<CR>
  "git status fzf
  nnoremap gs :GFiles?<CR>
  "remap for quick buffer switching
  nnoremap gb :Buffers<CR>
  "ag search fzf
  "nnoremap <C-g> :Ag<Cr>

  "rg search fzf
  nnoremap <C-g> :Rg<CR>

  "refresh of buffers
  nnoremap <F5> :checktime<CR>

  "remap to add lines when enter is pressed
  map <Enter> O<ESC>
  map <S-Enter> o<ESC>
