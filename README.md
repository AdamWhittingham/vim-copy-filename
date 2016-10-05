vim-copy-filepath
=================

A tiny bit of Vimscript to add commands for copying the relative path, absolute path, name and directory of the current file.

Installation
------------

Grab your favourite Vim-plugin manager and add this github URL.
For example, with the excellent [vim-plug](https://github.com/junegunn/vim-plug) you would add:

```
Plug 'AdamWhittingham/vim-copy-filename'
```

Commands
--------

`:CopyRelativePath` copies the relative path of the file (from the directory Vim was opened in to the file)
`:CopyRelativePathAndLine` as above but also appends the line number
`:CopyAbsolutePath` copies the absolute path of the file (the location of the file on the system, relative to the system root)
`:CopyAbsolutePathAndLine` as above but also appends the line number
`:CopyFileName` copies the name of the file
`:CopyDirectoryPath` copies the directory containing the file (same as absolute path without the file name)

Usage
-----

Bind your key shortcut to one of the functions dscribed above:

```

nmap <leader>cp :CopyRelativePath<CR>
nmap <leader>cl :CopyRelativePathAndLine<CR>
nmap <leader>cP :CopyAbsolutePath<CR>
nmap <leader>cf :CopyFileName<CR>
nmap <leader>cd :CopyDirectoryPath<CR>

```

Each of the commands calls a function of the same name, so they can also be reused in scripts/functions. For example, you can call `CopyRelativePath()` to access the underlying function for copying the relative path.
