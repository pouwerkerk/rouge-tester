---
layout: post
title:  "Rouge `runkit_js` Demo"
author: pouwerkerk
---

# Rouge `runkit_js` Demo

## Default

Simply specify the `runkit_js` lexer without any options (`runkit_js...`).

```runkit_js
var greeting = "hello world!";
console.log(greeting);
```

## Read Only

### `read_only=true`

```runkit_js?read_only=true
var greeting = "hello world!";
console.log(greeting);
```

### `read_only=false`

```runkit_js?read_only=1
var greeting = "hello world!";
console.log(greeting);
```

### `read_only`

```runkit_js?read_only
var greeting = "hello world!";
console.log(greeting);
```

## Engine Version

### `node_version=0.12.x`

```runkit_js?node_version=0.12.x
process.version;
```

### `node_version='>4.0.0'`

```runkit_js?node_version=>4.0.0
process.version;
```

## Timestamp

### `runkit_js?package_resolution_timestamp=100`

```runkit_js?package_resolution_timestamp=100
var R = require("ramda");
```

### `runkit_js?package_resolution_timestamp=1451635200000`

```runkit_js?package_resolution_timestamp=1451635200000
var R = require("ramda");
```

### `runkit_js?package_resolution_timestamp=1483257600000`

```runkit_js?package_resolution_timestamp=1483257600000
var R = require("ramda");
```

## Multiple Options

### `read_only=false&node_version=0.12.x`

```runkit_js?read_only=false&node_version=0.12.x
var greeting = "hello world!";
console.log(greeting);

process.version;
```

## Further Reading
* Tonic Embed options are parsed [here](https://github.com/njudah/tonic/blob/8f13dfd0959b1caf4a10ba59e1ab8b2c69b9cbf7/app/components/embed.js#L71-L72) and the full API is [here](https://tonicdev.com/docs/embed).
* The Rouge [PHP Lexer](https://github.com/jneen/rouge/blob/master/lib/rouge/lexers/php.rb) currently uses `find_fancy` options which are passed to the lexer from fenced blocks.

