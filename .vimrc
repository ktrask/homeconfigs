
set nocp
set autoindent
set smartindent
set backspace=2
set backup
set cmdheight=2
set completeopt=menuone,longest
set encoding=utf-8
set history=500
set hlsearch
set incsearch
set ignorecase
set smartcase
set wildmenu
set showcmd

set ruler
set showmatch
set softtabstop=8
set wrap
syntax on
set background=dark
"colorscheme solarized
colorscheme xoria256
filetype on
set foldmethod=indent
set nofoldenable
set laststatus=2
set mouse=a

set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list


hi Comment      ctermfg=darkcyan

"set runtimepath="/usr/share/vim/vimfiles/plugin/"

set rtp^="/usr/share/vim/vimfiles/plugin/"
cmap w!! %!sudo tee > /dev/null %

im üü <ESC>:w<CR>a
im öö <ESC>:w<CR>:make<CR>
im ;; <ESC>
im ää <ESC>


fun SetupVAM()
          " YES, you can customize this vam_install_path path and everything still works!
          let vam_install_path = expand('$HOME') . '/.vim/vim-addons'
          exec 'set runtimepath+='.vam_install_path.'/vim-addon-manager'

          " * unix based os users may want to use this code checking out VAM
          " * windows users want to use http://mawercer.de/~marc/vam/index.php
          "   to fetch VAM, VAM-known-repositories and the listed plugins
          "   without having to install curl, unzip, git tool chain first
          " -> BUG [4] (git-less installation)
          if !filereadable(vam_install_path.'/vim-addon-manager/.git/config') && 1 == confirm("git clone VAM into ".vam_install_path."?","&Y\n&N")
            " I'm sorry having to add this reminder. Eventually it'll pay off.
            call confirm("Remind yourself that most plugins ship with documentation (README*, doc/*.txt). Its your first source of knowledge. If you can't find the info you're looking for in reasonable time ask maintainers to improve documentation")
            exec '!p='.shellescape(vam_install_path).'; mkdir -p "$p" && cd "$p" && git clone --depth 1 git://github.com/MarcWeber/vim-addon-manager.git'
            " VAM run helptags automatically if you install or update plugins
            exec 'helptags '.fnameescape(vam_install_path.'/vim-addon-manager/doc')
          endif

          " Example drop git sources unless git is in PATH. Same plugins can
          " be installed form www.vim.org. Lookup MergeSources to get more control
          " let g:vim_addon_manager['drop_git_sources'] = !executable('git')

          call vam#ActivateAddons(['snipmate','snipmate-snippets', 'align'], {'auto_install' : 0})
          " sample: call vam#ActivateAddons(['pluginA','pluginB', ...], {'auto_install' : 0})
          " where 'pluginA' could be "git://" "github:YourName" or "snipmate-snippets" see vam#install#RewriteName()
          " also see section "5. Installing plugins" in VAM's documentation
          " which will tell you how to find the plugin names of a plugin
        endf
        call SetupVAM()

call pathogen#infect()
let g:Powerline_symbols = 'unicode'

set cursorline "displays pressed key

set rnu "relative line numbers

