
" vim 插件配置文件{
    if filereadable(expand("~/.vim/.vimrc.plugin.config"))
        source ~/.vim/.vimrc.plugin.config
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
