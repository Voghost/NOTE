" Editor: LingfengLiu


" 切换语言
"set langmenu=zh_CN
"let $LANG='zh_CN'
"source $VIMRUNTIME/delmenu.vim
"set langmenu=zh_cn.utf-8
"source $VIMRUNTIME/menu.vim
" 设置鼠标
" set mouse=a
"
"
" 设置python3
let g:python3_host_prog='/usr/bin/python3'
" 设置python2
let g:python_host_prog='/usr/bin/python2'

" 设置主题
" 主题１
"colorscheme hybrid
"set background=dark

"主题２
colorscheme gruvbox
let g:gruvbox_contrast_dark='hard'
set background=dark
"
"定义<leader> 按键
let mapleader=','



"主题3
"colorscheme molokai
"
"ariline 设置------------------------------------------------
"设置airline主题
"let g:airline_theme='angr'

" 使用powerline打过补丁的字体
let g:airline_powerline_fonts = 1
" 开启tabline
let g:airline#extensions#tabline#enabled = 1

" buffer 映射
nnoremap <leader>b :bp<cr>
nnoremap <leader>w :bn<cr>
nnoremap <leader><tab> :bn<cr>




"
" 设置行号
set number
" 设置相对行号
set rnu

" 设置缩进的空格数
set tabstop=4
set softtabstop=4

" 设置缩进的空格数
set shiftwidth=4

" 每行的缩进值与上一行相等
set autoindent

"设置高亮
syntax on

"映射 nore->非递归映射
inoremap <leader>w <ESC>:w<cr>
inoremap jj <ESC>
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
"inoremap {<CR> {<CR>}<ESC>O<TAB>
"inoremap [ []<ESC>i
"inoremap ( ()<ESC>i
"
"
"
"
"emmet-vim html/css 的html设置
" 设置快捷键
let g:user_emmet_leader_key='<C-Y>' 


" NERDtree 设置 ==================================

"定位到当前文件目录
nnoremap <leader>v :NERDTreeFind<cr>

" 打开/关闭目录树
nnoremap <leader>g :NERDTreeToggle<cr>
"================================================
"
let NERDTreeShowHidden=1  "是否展示隐藏
let g:ctrlp_map ='<c-p>'

" 取消搜索高亮
nnoremap <leader>ns :nohlsearch<cr>

"tagbar 设置
nnoremap <leader>t :TagbarToggle<CR>
" vim auto-pairs 配置
let g:AutoPairs={'(':')', '[':']', '{':'}',"'":"'",'"':'"','"""':'"""', "'''":"'''"}


" autoformat 格式化代码工具
" -------------------------------------------------------------------
let g:formatdef_myStyle = '"astyle --style=java --pad-oper"'
let g:formatters_cpp = ['myStyle']
let g:formatters_c = ['myStyle']

" 按F3 格式化
noremap <F3> :Autoformat<CR>
" 保存时格式化
" au BufWrite * :Autoformat
"
autocmd FileType markdown,asm,snippets let b:autoformat_autoindent=0




" 表格化工具设置
" --------------------------------------------------------------------
let g:table_mode_corner = '|'
let g:table_mode_border=0
let g:table_mode_fillchar=' '

function! s:isAtStartOfLine(mapping)
	let text_before_cursor = getline('.')[0 : col('.')-1]
	let mapping_pattern = '\V' . escape(a:mapping, '\')
	let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
	return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
endfunction

inoreabbrev <expr> <bar><bar>
			\ <SID>isAtStartOfLine('\|\|') ?
			\ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
inoreabbrev <expr> __
			\ <SID>isAtStartOfLine('__') ?
			\ '<c-o>:silent! TableModeDisable<cr>' : '__'





"markdown 配置
let g:tex_conceal = ""
let g:vim_markdown_math = 1 "数学显示
let g:vim_markdown_conceal = 0 "禁用隐藏
let g:vim_markdown_folding_disabled = 1 "禁用折叠
let g:vim_markdown_conceal_code_blocks = 0 "禁用代码隐藏


"" instant_markdown 配置
"" ---------------------------------------------------------------------
"let g:instant_markdown_browser = "firefox"
"let g:instant_markdown_mathjax = 1 "vim-instant-markdown  显示公式


"markdownPreviwe 配置
"------------------------------------------------------------------
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 0

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
let g:mkdp_preview_options = {
			\ 'mkit': {},
			\ 'katex': {},
			\ 'uml': {},
			\ 'maid': {},
			\ 'disable_sync_scroll': 0,
			\ 'sync_scroll_type': 'middle',
			\ 'hide_yaml_meta': 1,
			\ 'sequence_diagrams': {},
			\ 'flowchart_diagrams': {}
			\ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'






" coc.nvim  配置
" -----------------------------------------------------------------------------


" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
"
inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<TAB>" :
			\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if has('patch8.1.1068')
	" Use `complete_info` if your (Neo)Vim version supports it.
	inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
	imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
" 申明处
nmap <silent> gd <Plug>(coc-definition)
" 类型定义处
nmap <silent> gy <Plug>(coc-type-definition)
" 实现位置
nmap <silent> gi <Plug>(coc-implementation)
" 应荣位置
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
	if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	else
		call CocAction('doHover')
	endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
	autocmd!
	" Setup formatexpr specified filetype(s).
	autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
	" Update signature help on jump placeholder.
	autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
" 原来的注释了
"xmap <leader>a  <Plug>(coc-codeaction-selected)
"nmap <leader>a  <Plug>(coc-codeaction-selected)
"新版本 悬浮窗
function! s:cocActionsOpenFromSelected(type) abort
	execute 'CocCommand actions.open ' . a:type
endfunction
xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@


" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" 用tab确认  inoremap <silent><expr> <TAB>
			\ pumvisible() ? coc#_select_confirm() :
			\ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
			\ <SID>check_back_space() ? "\<TAB>" :
			\ coc#refresh()

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'



" coc-markdown 修复 -----------------------
nmap <leader>fx <Plug>(coc-codeaction)


" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-fugitive' "git的包装器
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons' "显示图标

"主题
Plug 'w0ng/vim-hybrid'
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'



"补全插件cocnvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" frozen 忽略更新
Plug 'honza/vim-snippets', {'frozen':1}



Plug 'jiangmiao/auto-pairs' "(自动括号补全)
Plug 'majutsushi/tagbar' "(代码大纲）
Plug 'lfv89/vim-interestingwords' "(高亮单词）
Plug 'ctrlpvim/ctrlp.vim' "(模糊搜索）
Plug 'sbdchd/neoformat' "代码格式化
Plug 'chiel92/vim-autoformat' " 代码格式化工具


Plug 'w0rp/ale'
Plug 'scrooloose/nerdcommenter' "代码注释工具 ,+cc注释　　　　,+cu取消注释

" markdown 笔记工具
Plug 'godlygeek/tabular' "必要插件，安装在vim-markdown前面
Plug 'plasticboy/vim-markdown'
Plug 'mzlogin/vim-markdown-toc'
"Plug 'suan/vim-instant-markdown', {'for': 'markdown'} "markdown 预览插件1
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  } "markdown 预览插件2


Plug 'dhruvasagar/vim-table-mode'  "表格化工具

Plug 'sheerun/vim-polyglot' "语法高亮、缩进

Plug 'Shirk/vim-gas' " GUN 汇编语法高亮

Plug 'itchyny/vim-cursorword' " 代码下划线

Plug 'lilydjwg/fcitx.vim' " fcitx 支持

Plug 'voldikss/vim-floaterm' " vim中的终端

Plug 'ap/vim-css-color' "vim 颜色

Plug 'mattn/emmet-vim' " vim-html/css 插件 

Plug 'phpactor/phpactor', {'for': 'php', 'branch': 'master', 'do': 'composer install --no-dev -o'}

call plug#end()

