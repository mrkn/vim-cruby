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

## Copyright

Copyright © 2013 Kenta Murata.
Please see http://mrkn.mit-license.org/ for the License of this software.
