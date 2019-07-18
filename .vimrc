" ctrl+v 不能选块，果断的注释了
" source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction


" 插件的配置文件{
    if filereadable(expand("~/.vim/.vimrc.bundle"))
        source ~/.vim/.vimrc.bundle
    endif
" }
" vim 插件配置文件{
    if filereadable(expand("~/.vim/.vimrc.bundle.config"))
        source ~/.vim/.vimrc.bundle.config
    endif
" }
" vim 配置文件{
    if filereadable(expand("~/.vim/.vimrc.config"))
        source ~/.vim/.vimrc.config
    endif
" }
" vim autocmd{
    if filereadable(expand("~/.vim/autocmd.vim"))
        source ~/.vim/autocmd.vim
    endif
" }


" vim keymap{
    if filereadable(expand("~/.vim/.vimrc.config.keymap"))
        source ~/.vim/.vimrc.config.keymap
    endif
" }
