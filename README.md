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

On `ft=c`:<br />
![](https://embed.gyazo.com/65ebdf3412c5d62446def2f8990c6c54.png)

On `ft=cruby`:<br />
![](https://embed.gyazo.com/c776aeb36e5a9889aba7330d6c996d23.png)

## Copyright

Copyright © 2013 Kenta Murata.
Please see http://mrkn.mit-license.org/ for the License of this software.
