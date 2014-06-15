vim-gnometerminal-cursor
========================

Tiny plugin to change the cursor in Gnome Terminal when going in and out of insert
mode within vim.

Installation
------------

Install by hand or with a plugin manager such as NeoBundle, etc.

Usage
-----

Behavior is controlled by the following three settings (shown with defaults):

    let g:gnometerminal_cursor_enter = "ibeam"
    let g:gnometerminal_cursor_leave = "block"
    let g:gnometerminal_cursor_exit = "block"

They indicate the cursor type to send to Gnome Terminal upon entering insert
mode, leaving insert mode, and exiting vim, respectively. Valid options are ibeam, block, and underline.

Tested with Gnome Terminal 3.6.2 within Ubuntu 14.04.
