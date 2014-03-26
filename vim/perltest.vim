" perltest.vim - test driven development for Perl with vim
"
"   <leader>c -- complie source
"   <leader>r -- run with main() or unit test for module
"   <leader>t -- run unit test for module
"   <leader>d -- debug run main() or unit test for module
"   <leader>u -- create unit test for module
"
" languages supported:
"   c/cpp, perl, python, ruby
"
"     ,t   --  Run tests
"     ,w   --  Set current file as test file. Only this test will run.
"     ,W   --  Unset current test file. All tests will run.
"
" v1.02 - Updates at http://perlmonks.org/index.pl?node_id=434793

if !exists("g:simplerun")
    let g:simplerun = 1
        " filetype: [cmd_proc, errorformat]
    let g:compilers = {
        \   'Perl'   : 'perl -c',
        \   'Python' : 'python ',
        \   'C++'    : 'make',
        \}
endif

function compile#cpp()
    make
    clist
endfunction

function run#cpp()
endfunction

function unittest#cpp()
endfunction

function debugRun#cpp()
endfunction

function createUnittest#cpp()
endfunction

function compile#perl()
    echo system("perl -c " . srcfile . "2>&1 | tee " . &errorfile)
    cfile
endfunction

function! Prove ( taint )
    if ! exists("g:testfile")
        let g:testfile = "t/"
    endif
    if g:testfile == "t/" || g:testfile =~ "\.t$"
       echo system("prove -lv     " . a:taint . g:testfile . " 2>&1 | tee " . &errorfile)
    else
       echo system("perl -c -Ilib " . a:taint . g:testfile . " 2>&1 | tee " . &errorfile)
    endif
    cfile
endfunction

nmap ,t :call  Prove ("")<cr>
nmap ,T :call  Prove ("-T ")<cr>
nmap ,w :let   g:testfile = expand("%")<cr>:echo "testfile is now" g:testfile<cr>
nmap ,W :unlet g:testfile<cr>:echo "testfile undefined; will run all tests"<cr>

" based on compiler/perl.vim by Christian J. Robinson <infynity@onewest.net>
" added formats for test failures
set errorformat=
        \%-G%.%#had\ compilation\ errors.,
        \%-G%.%#syntax\ OK,
        \%+Anot\ ok\%.%#-\ %m,
        \%C%.%#\(%f\ at\ line\ %l\),
        \%m\ at\ %f\ line\ %l.,
        \%+A%.%#\ at\ %f\ line\ %l\\,%.%#,
        \%+C%.%#

" FIXME make this more local. Needed for redirection syntax which isn't csh compatible
set sh=/bin/bash

" Just more convenient when shelling out a lot.
set autowrite

