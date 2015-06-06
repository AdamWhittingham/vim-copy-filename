" Copy File path
"
" Commands for copying the relative path, absolute path, name and directory of
" the current file.

function! SetGlobalCopyBuffer(content)
  if has("mac") || has("gui_macvim") || has("gui_mac") || has("windows")
    let @*=a:content
  else
    let @+=a:content
  endif
endfunction

function! CopyRelativePath()
  call SetGlobalCopyBuffer(expand("%"))
  echo 'Relative path copied'
endfunction
command! CopyRelativePath :call CopyRelativePath()

function! CopyAbsolutePath()
  call SetGlobalCopyBuffer(expand("%:p"))
  echo 'Absolute path copied'
endfunction
command! CopyAbsolutePath :call CopyAbsolutePath()

function! CopyFileName()
  call SetGlobalCopyBuffer(expand("%:t"))
  echo 'File name copied'
endfunction
command! CopyFileName :call CopyFileName()

function! CopyDirectoryPath()
  call SetGlobalCopyBuffer(expand("%:p:h"))
  echo 'Directory path copied'
endfunction
command! CopyDirectoryPath :call CopyDirectoryPath()
