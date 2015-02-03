" Language: Common Form
" Maintainer: Kyle Mitchell <kyle@kemitchell.com>
" Filenames: *.commonform
" URL: https://github.com/commonform/vim-commonform
" License: Apache-2.0

if exists('b:current_syntax')
    finish
endif

syntax sync fromstart

syntax region cfSummary start="^" end="\(\\\\\|\!\!\)" oneline
hi def link cfSummary Underlined

syntax region cfUse start="<" end=">" oneline
hi def link cfUse Keyword

syntax region cfField start="\[" end="\]" oneline
hi def link cfField Todo

syntax region cfReference start="{" end="}" oneline
hi def link cfReference Special

syntax region cfDefinition start="\"\"" end="\"\"" oneline
hi def link cfDefinition Define

syntax region cfConspicuous start="!!!" end=" " oneline
hi def link cfConspicuous Tag

syntax match cfInvalidCharacters "[^\x00-\x7F]"
hi def link cfInvalidCharacters Error

let b:current_syntax = "commonform"
