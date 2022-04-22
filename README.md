# HololiveColors.vim

## options

```vim
let g:hololive_random = 1 " default = 0, 0 | 1, 1 => random load colorscheme in g:hololive_colorschemes when start vim
```

## 知見

 - コメント内に特殊なもの、例えばJSDocなどの特殊なものは `Constant` と同じ色となる(`String`かもしれないが確認していない)
 - キャッシュの問題か、colorscheme内からランダムにしようとしてもうまくいかない。
   - また、ただの乱数に関してもlua内からよりもvimscript内から使った方が良さそう
