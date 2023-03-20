-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
vim.g.mapleader = " "
vim.opt.showtabline = 2
vim.opt.scrolloff = 5
vim.opt.mouse = "a"
vim.opt.backupcopy = "yes"
vim.opt.undolevels = 1000
vim.opt.shortmess:append({ c = true, S = true })
vim.opt.showmode = false
vim.opt.hidden = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.wrapscan = true
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.showcmd = true
vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.hlsearch = true
vim.opt.smartcase = true
vim.opt.errorbells = false
vim.opt.joinspaces = false
vim.opt.title = true
vim.opt.lazyredraw = true
vim.opt.encoding = "UTF-8"
vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.clipboard = "unnamedplus"
vim.opt.listchars = { tab = ">>>", trail = "·", precedes = "←", extends = "→", eol = "↲", nbsp = "␣" }
vim.opt.laststatus = 3
vim.opt.timeoutlen = 500
-- Buffer
-- vim.opt.fileformat = 'unix'
vim.opt.tabstop = 2
-- vim.opt.spelllang = 'it'
vim.opt.softtabstop = 2
vim.opt.swapfile = false
vim.opt.undofile = false
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
-- Window
vim.opt.number = true
vim.opt.colorcolumn = "+1"
vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 1
vim.opt.list = false
vim.opt.foldnestmax = 10
vim.opt.signcolumn = "yes"
vim.opt.relativenumber = false
vim.opt.foldenable = false
vim.opt.cursorline = true
vim.opt.guifont = "JetBrains Mono:h14"
vim.opt.wrap = true

function NewNote()
  vim.ui.input({ prompt = "Name: ", relative = "editor" }, function(name)
    vim.api.nvim_command(":e ~/Notes/" .. name .. ".md")
  end)
end

vim.cmd([[
nnoremap << >>
nnoremap >> <<
vnoremap << >gv
vnoremap >> <gv
nnoremap dd "_dd
nnoremap d "_d
vnoremap d "_d
nnoremap D "_D
vnoremap D "_D
nnoremap x "_x
vnoremap x "_x
nnoremap cc dd
nnoremap c d
vnoremap c d
noremap <Del> "_x
map! <S-Insert> <C-R>+
]])

vim.cmd([[
autocmd BufRead,BufNewFile Jenkinsfile set filetype=groovy
]])

vim.api.nvim_exec(
  [[

 let g:term_buf = 0
  let g:term_win = 0
let g:history_win_id = []
function! History_cursor_window()
  echomsg("history_cursor_window")
  "echomsg(g:saved_winnr_previous)
  let saved_winnr = win_getid()
    "echom(g:saved_winnr_previous)
  "if saved_winnr != g:saved_winnr_previous 
    "let g:saved_winnr_previous = saved_winnr
    "echom("saved_winnr")
    "echom(saved_winnr)
    "echom("saved_winnr_prev")
    "echom(g:saved_winnr_previous)
    call add(g:history_win_id,saved_winnr)
  "endif
    "let history_win_reverse = g:history_win_id
    "call reverse(history_win_reverse)
    "call len(history_win_id)
    let indice = 0
  for elem in g:history_win_id
    let indice += 1 
    "echom(indice)
      "echo(win_id2win(elem))
      echom("indoce")
      echom(indice)
    if win_id2win(g:history_win_id[-indice]) != 0 
      echo("g:history_win_id[-indice]")
      echo(g:history_win_id[-indice])
      "echom(elem)
      let toto = g:history_win_id[-indice]
      echom("toto")
      echom(toto)
      return toto
    endif
  endfor
endfunction

function! Close_all()
  let nodelete = 0
  let list_file_to_delete= []
  let list_file_to_keep = ['.vimrc','vimrcWindows','Jenkinsfile','SDK_struct' ]
  if expand('%:e') !=# ''
    let nodelete = 1
  endif
  for word in list_file_to_delete
    if expand('%:e') ==# word || expand('%:t') ==# word
      let  nodelete = 0
      break
    endif
  endfor

  for word in list_file_to_keep
    if expand('%:e') ==# word || expand('%:t') ==# word
      let  nodelete = 1
      break
    endif
  endfor

  if nodelete !=# 1
    execute "bw"
  endif
endfunction

function! CloseWindo()
  "echomsg("closewindo")
  "let saved_winnr = winnr()
  "let saved_winnr = bufname()
  let saved_winnr = win_getid()
  " let saved_winnr = History_cursor_window()
  "echom saved_winnr
  "call feedkeys("\<c-c>")
  "call feedkeys("\<c-c>")
  call feedkeys("\<esc>")
  call feedkeys("\<esc>")
 "execute 'normal("CTRL-\ CTRL-N")
  pclose
  helpclose
  ccl
  "clear last pattern
  let @/ = ""
  silent! :FloatermHide!<cr>
  silent! :nohlsearch<cr>
  silent! :DiffviewClose<cr>
  silent! <cmd>ToggleTermToggleAll!<cr>
  "silent! :CocCommand explorer --quit 
  
  "cache le terminal
  if has('nvim')
    if win_gotoid(g:term_win)
      hide
      "silent! :ToggleTermToggleAll!<cr>
    endif
  endif
  "silent! :ToggleTermToggleAll!<cr>
  windo call Close_all()
  "exec "silent! saved_winnr . 'wincmd w'"
  "exec "silent! saved_winnr . 'bufload'"
  "exec "silent! saved_winnr . 'win_gotoid'"
  "let saved_winnr = History_cursor_window()
  "echom("saved_winnr")
  "echom(saved_winnr)
  "echo saved_winnr
  call win_gotoid(saved_winnr)
  "
  "close plugin rmagatti/goto-preview
  "
silent! :lua require('goto-preview').close_all_win()
endfunction

silent! command! CloseAll call CloseWindo()
  set autoread
]],
  true
)

--[[ local M = {} ]]

function smart_quit()
  local bufnr = vim.api.nvim_get_current_buf()
  local modified = vim.api.nvim_buf_get_option(bufnr, "modified")
  if modified then
    vim.ui.input({
      prompt = "You have unsaved changes. Quit anyway? (y/n) ",
    }, function(input)
      if input == "y" then
        vim.cmd("q!")
      end
    end)
  else
    vim.cmd("q!")
  end
end

function QuitAllLua()
  vim.cmd([[call feedkeys("\<esc>")]])
  vim.cmd([[call feedkeys("q")]])
  vim.cmd([[call feedkeys("\<esc>")]])
  vim.cmd("pclose")
  vim.cmd("helpclose")
  vim.cmd("ccl")
  vim.cmd("NvimTreeClose")
  vim.cmd("DiffviewClose")
  vim.cmd("nohlsearch")
  --[[ vim.cmd("SymbolsOutlineClose") ]]
  --[[ vim.cmd("Lspsaga close_floaterm") ]]
  require("FTerm").close()
  --[[ :pclose ]]
  --[[   helpclose ]]
  --[[   ccl ]]
end
