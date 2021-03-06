" Don't allow insecure operations when loading a .vimrc in cwd
set secure

" Don't try to be backwards compatible
set nocompatible

" Load file-type specific plugins and indent definitions
filetype plugin indent on

" Don't manually sync the swap to disk on unix, since that's periodically done
" for us, so the risk of losing data is relatively small, and this should
" improve performance slightly.
if has('unix')
  set swapsync=
endif

" Paths for backups, swap files, and undo files
set backupdir=~/.vim/backup
set directory=~/.vim/swap
if has('persistent_undo')
  set undodir=~/.vim/undo
endif

" Write backup files and do not remove them after exit.
set backup
set writebackup

" Rename the file to the backup when possible.
set backupcopy=auto

" Enable mouse support
if has('mouse')
  set mouse=a
  if has('unix') && ! has('gui_running')
    set ttymouse=xterm2
  endif
endif

" Handle win32 behavior
if has('win32')
  " I use this rather than 'behave mswin', as the latter makes GVim act like
  " other windows applications, rather than like Vim.
  source $VIMRUNTIME/mswin.vim
else
  let $TEMP = '/tmp'
endif
behave xterm

" Special less.sh and man behavior
fun! <SID>check_pager_mode()
  if exists('g:loaded_less') && g:loaded_less
    " we're in vimpager / less.sh / man mode
    set laststatus=0
    set ruler
    set foldmethod=manual
    set foldlevel=99
    set nolist
    " Make <space> in normal mode go down a page rather than left a
    " character
    noremap <space> <C-f>
  endif
endfun
au VimEnter * :call <SID>check_pager_mode()
