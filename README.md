[TOC]
# vim config file .vimrc
	.vimrc  vim 第一配置文件 里面配置了分配置文件的路径
	.vimrc.config 	vim的配置文件，
	.vimrc.plugin.config vim 插件的配置文件，主要有快捷键，与插件的配置
	.vimrc.config.keymap vim 的快捷键配置
	autocmd.vim 自动执行的一些命令

# 注意 
本人前端，前端的配置多一点，下面的插件还没有完善，还没想补文档，后面一定补 
# install 
```
	cd ~
	git clone git@github.com:Pioneer-Linzi/.vim.git
	ln -s -i ~/.vim/.vimrc ~/.vimrc
```

# neovim [配置](https://neovim.io/doc/user/nvim.html#nvim-from-vim)
Transitioning from Vim				*nvim-from-vim*

1. To start the transition, create your |init.vim| (user config) file:
```
    :call mkdir(stdpath('config'), 'p')
    :exe 'edit '.stdpath('config').'/init.vim'
```
2. Add these contents to the file:
```
    set runtimepath^=~/.vim runtimepath+=~/.vim/after
    let &packpath = &runtimepath
    source ~/.vimrc
```
3. Restart Nvim, your existing Vim config will be loaded.


# 安装插件 
```
	:PlugInstall
```


# use plugin and key map
## coc for neovim
## vim-easymotion
## vim-multiple-cursors
## nerdtree
## vim-colors-solarized
## ctrlp.vim
## vim-airline
## vim-airline-themes
## minibufexpl.vim
## indentLine
## rainbow_parentheses.vim
## auto-pairs
## vim-surrund
## html5.vim
## emmet-vim
## vim-css3-syntax
## css.vim
## scss-syntax.vim
## vim-stylus
## vim-fugitive
## vim-gitgutter
## gist-vim
## vim-javascript
## javascript-libraries-syntax.vim
## supertab
## vim-jsbeautify
## yajs.vim
## vim-vue
## syntastic
## vim-autoformat
## vim-trailing-whitespace
## vim-easy-align

```
"---------------------------vim  easy align -------------------------
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga :EasyAlign
```
```
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga :EasyAlign
```

## YouCompleteMe
## TaskList.vim
## mbbil/undotree
## tabular
## vim-markdown
## vim-workspace


## undotree

```
,,td 打开todo list
```



mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
ln -s ~/.vim $XDG_CONFIG_HOME/nvim
ln -s ~/.vimrc $XDG_CONFIG_HOME/nvim/init.vim
