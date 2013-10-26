# vim-cruby

## Configuration

This is an example configuration:

```
NeoBundle 'mrkn/vim-cruby'
augroup cruby
  autocmd!
  autocmd BufWinEnter,BufNewFile ~/rubies/trunk/**/*.[chy] setlocal filetype=cruby
augroup END
```

## Screenshot

On `ft=c`:
![](https://dl.dropbox.com/u/266876/skitch/1._object.c____work_ruby_2.0.0.git__-_VIM__Vim_before.png)

On `ft=cruby`:
![](https://dl.dropbox.com/u/266876/skitch/1._object.c____work_ruby_2.0.0.git__-_VIM__Vim_after.png)

## Copyright

Copyright © 2013 Kenta Murata.
Please see http://mrkn.mit-license.org/ for the License of this software.
