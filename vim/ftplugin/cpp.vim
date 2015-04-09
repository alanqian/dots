"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => c/c++ section

setlocal noundofile
setlocal formatoptions=croqtmM 
setlocal cindent
setlocal comments=sr:/*,mb:*,ex:*/,://
setlocal cinoptions=:0g0t0(sus
setlocal completeopt=longest,menu
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4

setlocal makeprg=make\ -j
setlocal grepprg=egrep\ -n\ $*\ /dev/null
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn .git generated'

"setlocal path+=$dpf/df-lib/include,$dpf/df-api/include,$dpf/df-common/include,$dpf/dt-api/include,
"setlocal path+=../include
setlocal path+=/usr/include/c++/4.5

"setlocal efm to correct g++ 4.5.x prompt & ld prompt
au FileType c,cpp setlocal efm=%+GIn\ file\ included\ from\ %m,%+Gcollect2:\ %m,%f%l:\ %m,%f:%l:%c:\ %m,%f:%l:\ %m
au BufReadPost quickfix  setlocal wrap
au FileType c,cpp syn keyword Type uid_t uuid_t

"quickfix shortcuts: next/previous error

setlocal pastetoggle=<C-F11>
map <F4> :cn<cr>
map <S-F4> :cp<cr>

map <C-F4> <Esc>:tn<cr>
map <C-F3> <Esc>:tp<cr>
"map \ /#####<cr>

iab xtrace LOG4CXX_TRACE(logger, format(
iab xdebug LOG4CXX_DEBUG(logger, format(
iab xinfo LOG4CXX_INFO(logger, format(
iab xwarn LOG4CXX_WARN(logger, format(
iab xerror LOG4CXX_ERROR(logger, format(
iab xfatal LOG4CXX_FATAL(logger, format(

"source ~/.vim_runtime/template/code_template.vim
"au BufNewFile *.c,*.cpp,*.h  call Read_templ("~/template/code_header.tpl")
"au BufNewFile test_*.c,test_*.cpp call Read_templ("~/template/test_cpp.tpl")
"au BufNewFile *.h call Read_templ("~/template/include_define.tpl")
"au BufNewFile journal_*.txt call Read_templ("~/template/journal_txt.tpl")

"ASSERT_TRUE(condition)
"ASSERT_FALSE(condition)
"ASSERT_EQ(expected, actual)
"ASSERT_NE(val1, val2)
"ASSERT_LT(val1, val2)
"ASSERT_LE(val1, val2)
"ASSERT_GT(val1, val2)
"ASSERT_GE(val1, val2)
"ASSERT_STREQ(expected_str, actual_str)
"ASSERT_STRNE(str1, sectiontr2)
"ASSERT_STRCASEEQ(expected_str, actual_str)
"ASSERT_STRCASENE(str1, str2)
"
"EXPECT_TRUE(condition)
"EXPECT_FALSE(condition)
"EXPECT_EQ(expected, actual)
"EXPECT_NE(val1, val2)
"EXPECT_LT(val1, val2)
"EXPECT_LE(val1, val2)
"EXPECT_GT(val1, val2)
"EXPECT_GE(val1, val2)
"EXPECT_STREQ(expected_str, actual_str)
"EXPECT_STRNE(str1, sectiontr2)
"EXPECT_STRCASEEQ(expected_str, actual_str)
"EXPECT_STRCASENE(str1, str2)

