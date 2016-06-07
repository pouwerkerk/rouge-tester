---
layout: post
title:  "Rouge `tonicjs` Demo"
author: pouwerkerk
---

# Rouge `tonic_js` Demo

## Default

Simply specify the `tonic_js` lexer without any options (` ```tonic_js...``` `).

```tonic_js
var greeting = "hello world!";
console.log(greeting);
```

## Read Only

### `read_only=true`

```tonic_js?read_only=true
var greeting = "hello world!";
console.log(greeting);
```

### `read_only=false`

```tonic_js?read_only=1
var greeting = "hello world!";
console.log(greeting);
```

### `read_only`

```tonic_js?read_only
var greeting = "hello world!";
console.log(greeting);
```

## Engine Version

### `node_version=0.12.x`

```tonic_js?node_version=0.12.x
process.version;
```

### `node_version='>4.0.0'`

```tonic_js?node_version=>4.0.0
process.version;
```

## Multiple Options

### `read_only=false&node_version=0.12.x`

```tonic_js?read_only=false&node_version=0.12.x
var greeting = "hello world!";
console.log(greeting);

process.version;
```

## Further Reading
* Tonic Embed options are parsed [here](https://github.com/njudah/tonic/blob/8f13dfd0959b1caf4a10ba59e1ab8b2c69b9cbf7/app/components/embed.js#L71-L72) and the full API is [here](https://tonicdev.com/docs/embed).
* The Rouge [PHP Lexer](https://github.com/jneen/rouge/blob/master/lib/rouge/lexers/php.rb) currently uses `find_fancy` options which are passed to the lexer from fenced blocks.

