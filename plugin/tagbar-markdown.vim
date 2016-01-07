
if exists("tagbar_markdown")
    finish
endif
let tagbar_markdown = 1


if (!exists('g:markdown2ctags'))
    let g:markdown2ctags = '~/bundle/markdown2ctags/markdown2ctags.py'
endif

" Add support for markdown files in tagbar.
let g:tagbar_type_markdown = {
            \ 'ctagstype': 'markdown',
            \ 'ctagsbin' : g:markdown2ctagsk,
            \ 'ctagsargs' : '-f - --sort=yes',
            \ 'kinds' : [
            \ 's:sections',
            \ 'i:images'
            \ ],
            \ 'sro' : '|',
            \ 'kind2scope' : {
            \ 's' : 'section',
            \ },
            \ 'sort': 0,
            \ }

let g:tagbar_type_mkd = {
            \ 'ctagstype': 'markdown',
            \ 'ctagsbin' : g:markdown2ctagsk,
            \ 'ctagsargs' : '-f - --sort=yes',
            \ 'kinds' : [
            \ 's:sections',
            \ 'i:images'
            \ ],
            \ 'sro' : '|',
            \ 'kind2scope' : {
            \ 's' : 'section',
            \ },
            \ 'sort': 0,
            \ }

let g:tagbar_type_vimwiki = {
            \ 'ctagstype': 'markdown',
            \ 'ctagsbin' : g:markdown2ctagsk,
            \ 'ctagsargs' : '-f - --sort=yes',
            \ 'kinds' : [
            \ 's:sections',
            \ 'i:images'
            \ ],
            \ 'sro' : '|',
            \ 'kind2scope' : {
            \ 's' : 'section',
            \ },
            \ 'sort': 0,
            \ }

