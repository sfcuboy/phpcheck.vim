 "PHP语法检查插件 phpcheck.vim

 autocmd BufWritePre *.php call PHPSyntaxCheck()
 
 if !exists('g:PHP_SYNTAX_CHECK_BIN')
     let g:PHP_SYNTAX_CHECK_BIN = 'php'
 endif
 
 function! PHPSyntaxCheck()
     execute "silent !rm -f %.check"
     execute "silent :w %.check"
     try
         let result = system(g:PHP_SYNTAX_CHECK_BIN.' -l -n '.expand('%').'.check')
     finally
         if (stridx(result, 'No syntax errors detected') == -1)
             echohl WarningMsg | echoerr substitute(result,".check","","g") | echohl None
             execute "silent !rm -f %.check"
         endif
     endtry
     execute "silent !rm -f %.check"
 endfunction 
