source /home/icc/.vimrc
let $MYVIMRC = '/home/icc/projects/icc/.vimrc'
nnoremap <leader>vs :source /home/icc/.vimrc<cr>

set textwidth=0 
set wrapmargin=0
let g:CommandTFileScanner='git'
"Find in git root
nnoremap <silent> <Leader>fr :CommandT ~/projects/icc<CR>
nnoremap <silent> <Leader>fi :CommandT ~/projects/icc<CR>
"Find in commons 
nnoremap <silent> <Leader>fc :CommandT ~/projects/icc/commons<CR>

"Enable eclim
if (exists("g:EclimDisabled"))
    unlet g:EclimDisabled
endif
let g:EclimJavaSearchSingleResult='edit'
let g:EclimCompletionMethod = 'omnifunc'

"Tips insert ctrl-R by (ctrl-v ctrl-r)
let @i='0vi""ty[[lV%S<xsl:if test="string(t)">'

set tags=/home/icc/projects/icc/.tags,/home/icc/projects/jboss/source/jbossesb-4.10-src/product/rosetta/.tags,/home/icc/projects/jboss/source/jboss-6.1.0.Final-src/.tags
set wildignore+=*.class,*.iml
set wildignore+=NERD_tree_*
set wildignore+=__Tag_List__
set wildignore+=**/target/**
set wildignore+=**/bin/**

let NERDTreeIgnore = ['^target$','\.iml$','^bin$','^NERD_tree_','__Tag_List__']

set spelllang=fik
set nospell
augroup fik_spell
    autocmd!
    autocmd FileType xml  setlocal spelllang=fik 
    autocmd FileType java setlocal spelllang=fik 
    autocmd FileType xsl  setlocal spelllang=fik 
    autocmd FileType xsd  setlocal spelllang=fik 
    autocmd FileType gitcommit  setlocal spell spelllang=fik 
augroup END

augroup fik_mappings
    autocmd!
    autocmd FileType xsd nnoremap <buffer> <localleader>t :call CaptureSystemCall("fik-xsd-to-xml.rb ". expand("%"))<CR>
augroup END

" set wildignore+=**/target/classes/**,**/target/test-classes/**,**/target/**/schema/**,**/target/**/META-INF/**
" set wildignore+=**/target/**/*.jar,**/target/**/*.esb
" nmap ,t :execute "normal mB" \| execute "!fik-process-resources.sh" \| execute "normal 'T" \|  execute "JUnit" \| execute "normal 'B"<CR>
nmap ,t :execute  "normal mP" \| execute "normal 'T" \|  execute "normal wa" \| execute "Ftest" \| execute "normal 'P" \| redraw!<CR>
" nmap ,b :execute "normal mP" \| execute "normal 'B" \|  execute "Fbuild" \| execute "normal 'P"<CR>
nmap ,T :execute "Ftest"<cr>
nmap ,b :execute "Fbuild"<cr>

" nmap ,t :execute "normal mB" \| execute "!fik-process-resources.sh `fik-project-root-forfile.rb " . expand("%") . "` " \| execute "normal 'T" \|  execute "JUnit" \| execute "normal 'B"<CR>

set path=.,,**/src/test/resources/,,**/src/main/resources/,,**/src/test/java/,,**/src/main/java/,/home/icc/projects/icc/commons/esb_commons/src/main/java/,/home/icc/projects/icc/commons/schemas/src/main/resources/,/home/icc/projects/icc/commons/fik-test-lib/src/main/java/

"go to file in "" but with out leading /
noremap <leader>gf vi"olgf

" hi clear SpellBad
" hi SpellBad cterm=underline 

" hi clear SpellCap
" hi SpellCap cterm=underline 
" Asciidoc
"nmap ,a :!asciidoc -a data-uri -a icons -a iconsdir=/etc/asciidoc/images/icons %<cr>
nmap ,a :!asciidoctor  %<cr>


command! Ftest :call Ftest()
function! Ftest()
  normal mT
  let project_root=system('fik-project-root-for-file.rb ' .  expand('%'))
  " echom "Project root: ". project_root
  let result=system('fik-process-resources.sh ' . expand(project_root))
  echom "Result of fik-process-resources: " . result
  JUnit 
endfunction


command! Fbuild :call Fbuild()
function! Fbuild()
  normal mB
  let project_root=system('fik-project-root-for-file.rb ' .  expand('%'))
  " echom "Project root: ". project_root
  " let result=system('fik-process-resources.sh ' . expand(project_root))
  " echom "Result of fik-process-resources: " . result
  execute "Dispatch! fik-build -n " . expand(project_root)
endfunction

funct! CaptureSystemCall(command)
  let @o=system(a:command)
  echo @o
endfunct!

