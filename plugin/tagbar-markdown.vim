
if exists("tagbar_markdown_markdown2ctags_loaded")
    finish
endif
let tagbar_markdown_markdown2ctags_loaded = 1


if (!exists('g:tagbar_markdown_markdown2ctags'))
    let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h')
    let g:tagbar_markdown_markdown2ctags = s:path . '/../markdown2ctags.py'
endif

" Add support for markdown files in tagbar.
let s:tagbar_type_markdown = {
            \ 'ctagstype': 'markdown',
            \ 'ctagsbin' : g:tagbar_markdown_markdown2ctags,
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

if (!exists('g:tagbar_type_markdown'))
    let g:tagbar_type_markdown = copy(s:tagbar_type_markdown)
endif

if (!exists('g:tagbar_type_mkd'))
    let g:tagbar_type_mkd = copy(s:tagbar_type_markdown)
endif

if (!exists('g:tagbar_type_vimwiki'))
    let g:tagbar_type_vimwiki = copy(s:tagbar_type_markdown)
endif
