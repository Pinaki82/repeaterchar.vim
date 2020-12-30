" http://stackoverflow.com/questions/5054128/repeating-characters-in-vim-insert-mode
" If you are OK with leaving INSERT mode only once (at the end), this sequence works:
" <C-o>80i-<Esc> 
" generally we can achieve the same by Esc 30 a (or, i) - Esc a

function! Repeat()
    let times = input("Count: ")
    let char  = input("Char: ")
    exe ":normal a" . repeat(char, times)
endfunction

imap <C-u> <C-o>:call Repeat()<cr>

" Help: Go to Insert mode and press CTRL+U i.e., `<C-u>`.
