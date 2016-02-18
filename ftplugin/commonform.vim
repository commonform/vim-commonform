" Vim filetype plugin
" Language: Common Form
" Maintainer: Kyle Mitchell <kyle@kemitchell.com>

if exists('b:did_ftplugin')
	finish
endif

let b:did_ftplugin = 1

setlocal comments=:# commentstring=#\ %s
setlocal suffixesadd+=cform,commonform,cftemplate

augroup CommonFormBufUpdate | augroup END
augroup CommonFormBufNew | augroup END
