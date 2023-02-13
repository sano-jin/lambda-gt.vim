" Vim syntax file
" Language:   Lambda GT
" Maintainer: Jin SANO. sano@ueda.info.waseda.ac.jp
" Repository: github.com/sano-jin/lambda-gt.vim
" LICENSE:    MIT

if exists("b:current_syntax")
    finish
endif

" Comment
syn region lamGTCommentBlock          start="/\*" end="\*/"
syn region lamGTCommentLineSlash      start="\/\/" end="$"
syn region lamGTCommentLinePercentage start="%" end="$" 

hi def link lamGTCommentBlock Comment
hi def link lamGTCommentLineSlash Comment
hi def link lamGTCommentLinePercentage Comment

" Operator
syn match lamGTOperator "=\\=\|=:=\|\\==\|=<\|==\|>=\|\\=\|\\+\|=\.\.\|<\|>\|=\|+\||"
syn match lamGTOperator "===\|\\===\|<=\|=>"
syn match lamGTOperator ":-"
hi def link lamGTOperator Operator

" Link
syn match lamGTLink +_[A-Z]\w*+
" hi def link lamGTLink Identifier
hi def link lamGTLink Identifier

" Variable
syn match lamGTAtom +[a-z]\w*+
" hi def link lamGTAtom Identifier
hi def link lamGTAtom Terminal

" Constructor
syn match lamGTConstructor +[A-Z]\w*+
hi def link lamGTConstructor Constant


" Keyword
syn match lamGTKeyword +let\|in\|rec\|case\|of\|otherwise\|nu\|->\|<\|>\|\\\|\.+
hi def link lamGTKeyword Keyword

" " Define
" syn match lamGTDefine +let\|in\|rec+
" hi def link lamGTDefine Define


" Graph
syn match lamGTGraph +{\|}+
hi def link lamGTGraph Special


" Number
syn match lamGTNumber '\d\+|\d\+\.\d\+'
hi def link lamGTNumber Number


let b:current_syntax="lamGT"
