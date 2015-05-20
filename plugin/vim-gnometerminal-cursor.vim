if !exists("g:gnometerminal_cursor_enter")
  let g:gnometerminal_cursor_enter = "ibeam"
endif
if !exists("g:gnometerminal_cursor_leave")
  let g:gnometerminal_cursor_leave = "block"
endif
if !exists("g:gnometerminal_cursor_exit")
  let g:gnometerminal_cursor_exit = "block"
endif

if (executable("gconftool-2") && has("autocmd") && !has("gui_running"))
  au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Profile0/cursor_shape " . g:gnometerminal_cursor_enter
  au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Profile0/cursor_shape " . g:gnometerminal_cursor_leave
  au VimLeave    * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Profile0/cursor_shape " . g:gnometerminal_cursor_exit
endif
