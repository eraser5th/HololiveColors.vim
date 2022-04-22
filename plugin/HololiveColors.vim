if g:hololive_random
  lua require('HololiveColors.random').loadColorSchemeRandom()
endif

function HololiveColors#hololive_random_color()
  lua require('HololiveColors.random').loadColorSchemeRandom()
endfunction

command! -nargs=0 HoloRandom call HololiveColors#hololive_random_color()

nnoremap <silent> <Leader>hr :call HololiveColors#hololive_random_color()<CR>
