# simple-assert

Super simple assert for unit testing in lua

```
luarocks install simple-assert
```

```lua
-- example.lua

local simple = require("simple.assert")
simple.assert_eq(2, 3)
```

```sh
$ lua example.lua 
lua: example.lua:2: ❌ Assertion failed
  Expected: 2
  Actual:   3

stack traceback:
        [C]: in global 'error'
        /home/chiller/.luarocks/share/lua/5.5/simple/assert.lua:12: in field 'assert_eq'
        foo.lua:2: in main chunk
        [C]: in ?
```

