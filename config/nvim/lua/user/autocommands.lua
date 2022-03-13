vim.cmd [[
  " Pick up where I left off
  augroup focus
    autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "norm g`\"" | endif
  augroup end

  " Resize splits when vim size changes
  augroup window 
    autocmd VimResized * execute "normal! \<c-w>="
  augroup end

  " Highlight yanked text
  autocmd TextYankPost * lua require'vim.highlight'.on_yank({"Substitute", 300})

  " Toggle relative number when focused
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu | set nornu | endif
]]
