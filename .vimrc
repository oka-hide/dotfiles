"=======================
"    basic setting
"=======================

"display
"======================
set number						"行数表示
set laststatus=2				" 常にステータス行を表示
" iconvが使用可能の場合、カーソル上の文字コードをエンコードに応じた表示にするGetB(を使用)
"if has('iconv')
"    set statusline=%<[%n]%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%y\ %F%=[%{GetB()}]\ %l,%c%V%8P
"else
"    set statusline=%<%f\ %m\ %r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=\ (%v,%l)/%L%8P
"endif

set linespace=0
set wildmenu					"コマンド入力中の補完候補をステータスラインに表示
set showcmd						" 実行したコマンドを表示
"set list						" タブや改行などを別の文字で表示する
"set listchars=tab:-\ ,extends:< " タブや改行などの代替文字設定 (ex. tab:>-,extends:<,trail:-,eol:< )
set ruler						"ルーラー表示
set showmode


"syntax color
"======================
syntax on						"シンタックスハイライト
"set t_Co=256                   "256色

" カラー表示
"EX)default, elflord, morning, perchpuff, torte, blue, delek, evening"   ,
"murphy, ron, zellner, darkblue, desert, koehler, pablo, shine
colorscheme darkblue

let php_sql_query=1             "SQLをハイライト
let php_htmlInStrings=1         "HTMLをハイライト
"highlight LineNr ctermfg=darkgrey
"highlight Commnet ctermfg=DarkCyan


"search
"======================
set ignorecase					" 大文字小文字を無視
set smartcase                   "検索で小文字なら大文字を無視、大文字なら無視しない設定 
set wrapscan					" ファイルの最後に来たら最初から検索
set hlsearch					" 検索キーワードをハイライトする


"edit
"======================
set autoindent					"オートインデント
set showmatch					" 対応する括弧に一時的に移動
"set backspace=1				" 全て Backspace で削除可能にする
set cindent
set smartindent


"tab
"======================
set expandtab					" タブをスペースに変換する
set tabstop=4					"タブ幅
set shiftwidth=4				"インデント幅
set softtabstop=0               "<Tab>を押した時に挿入される空白の量(0:ts'で指定した量
set shiftround                  "インデントを'shiftwidth' の値の倍数に丸める


"encode
"======================
"set encoding=euc-jp
set encoding=utf-8
"set fileencoding=euc-jp
set fileencoding=utf-8
set fileencodings=utf-8,euc-jp,ISO-2022-JP


"others
"======================
"set nocompatible				" vi互換にしない
"set ffs=unix					" 改行コードをLFにする(default: unix,dos)
"set noinsertmode				" デフォルトモードをインサートにしない
"set wrap						" 行の端まで到達したら折り返す
"set nolinebreak				" ホワイト・スペースで折り返さない
"set formatoptions=q			" gq コマンド以外では自動改行しない
"set noerrorbells				" エラー時にベルを鳴らさない
"set novisualbell				" ヴィジュアルベルを使わない
"set cmdheight=1				" コマンドラインの高さ
"set shortmess=t				" 'Press RETURN or enter command to continue' を表示しない
"set history=50					" 記憶するコマンド数
"set wildignore=*.o,*.so		" 補完候補から除外するファイル
"set smarttab					"
"set noexpandtab				" オートインデント時に挿入タブをスペースに変換しない?
"set title						" タイトルを表示
"set smartcase					" 検索キーワードに大文字が含まれていれば大文字小文字を区別
"set magic						" 正規表現使用時に magic モードにする
"set keywordprg=man\ -a			" キーワードヘルプコマンドの設定 (default: man or man\ -s)
"set lazyredraw					" マクロ実行中は画面を更新しない
"set statusline=%<%f\%m%r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%b\ 0x%B\ \ %l,%c%V%8P									" ステータス行のフォーマット
"set cursorline					" カーソル行に下線を表示 (* vim7)
"set cursorcolumn				" カーソル列をハイライト (* vim7)


" NneBundle
" https://github.com/Shougo/neobundle.vim
"======================

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
    if &compatible
        set nocompatible               " Be iMproved
    endif

    " Required:
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

NeoBundle 'scrooloose/nerdtree'        "NERDTree
"NeoBundle 'Townk/vim-autoclose'        "自動的に括弧補完
NeoBundle 'thinca/vim-quickrun'        "quickrun
NeoBundle 'grep.vim'                   "grep
NeoBundle 'scrooloose/syntastic'       "シンタックスチェック
NeoBundle 'Shougo/neocomplete'         "補完 https://github.com/Shougo/neosnippet.vim
NeoBundle 'Shougo/neosnippet'          "補完 https://github.com/Shougo/neosnippet.vim
NeoBundle 'Shougo/neosnippet-snippets' "補完 https://github.com/Shougo/neosnippet-snippets
NeoBundle 'itchyny/lightline.vim'      "https://github.com/itchyny/lightline.vim
NeoBundle 'othree/html5.vim'           "html5シンタックスハイライト https://github.com/othree/html5.vim
NeoBundle 'groenewege/vim-less'        "Lessシンタックスハイライト https://github.com/groenewege/vim-less
NeoBundle 'hail2u/vim-css3-syntax'     "css3シンタックスハイライトhttps://github.com/groenewege/vim-les://github.com/hail2u/vim-css3-syntax 
NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}} "jsシンタックスハイライト https://github.com/jelera/vim-javascript-syntax
NeoBundle 'mxw/vim-jsx'                "jsxシンタックスハイライト https://github.com/mxw/vim-jsx
NeoBundle 'plasticboy/vim-markdown'    "マークダウン用 http://qiita.com/uedatakeshi/items/31761b87ba8ecbaf2c1e
NeoBundle 'kannokanno/previm'          "マークダウン用 http://qiita.com/uedatakeshi/items/31761b87ba8ecbaf2c1e
NeoBundle 'tyru/open-browser.vim'      "マークダウン用 http://qiita.com/uedatakeshi/items/31761b87ba8ecbaf2c1e
 
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck



" マークダウン用
"======================
au BufRead,BufNewFile *.md set filetype=markdown
"let g:previm_open_cmd = 'open -a Chrome'


" ======================
" "カーソル上の文字コードをエンコードに応じた表示にする
" " ======================
" "statuslineで文字コードを表示するための下請け関数です。

function! GetB()
    let c = matchstr(getline('.'), '.', col('.') - 1)
    let c = iconv(c, &enc, &fenc)
    return s:String2Hex(c)
endfunction
" :help eval-examples
" The function Nr2Hex() returns the Hex string of a number.
function! s:Nr2Hex(nr)
    let n = a:nr
    let r = ''
    while n
        let r = '0123456789ABCDEF'[n % 16] . r
        let n = n / 16
    endwhile
    return r
endfunc
" The function String2Hex() converts each character in a string to a two
" character Hex string.
function! s:String2Hex(str)
    let out = ''
    let ix = 0
    while ix <
        strlen(a:str)
        let out = out .  s:Nr2Hex(char2nr(a:str[ix]))
        let ix = ix + 1
    endwhile
    return out
endfunc


" itchyny/lightline.vim設定
let g:lightline = {
            \ 'colorscheme': 'landscape',
            \ 'mode_map': { 'c': 'NORMAL' },
            \ 'active': {
            \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ]
            \ },
            \ 'component_function': {
            \   'modified': 'LightLineModified',
            \   'readonly': 'LightLineReadonly',
            \   'fugitive': 'LightLineFugitive',
            \   'filename': 'LightLineFilename',
            \   'fileformat': 'LightLineFileformat',
            \   'filetype': 'LightLineFiletype',
            \   'fileencoding': 'LightLineFileencoding',
            \   'mode': 'LightLineMode',
            \ },
            \ 'separator': { 'left': '⮀', 'right': '⮂' },
            \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
            \ }

function! LightLineModified()
    return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightLineReadonly()
    return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? '⭤' : ''
endfunction

function! LightLineFilename()
    return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
                \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
                \  &ft == 'unite' ? unite#get_status_string() :
                \  &ft == 'vimshell' ? vimshell#get_status_string() :
                \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
                \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
endfunction

function! LightLineFugitive()
    if &ft !~? 'vimfiler\|gundo' && exists("*fugitive#head")
        let _ = fugitive#head()
        return strlen(_) ? '⭠ '._ : ''
    endif
    return ''
endfunction

function! LightLineFileformat()
    return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightLineFiletype()
    return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! LightLineFileencoding()
    return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! LightLineMode()
    return winwidth(0) > 60 ? lightline#mode() : ''
endfunction
