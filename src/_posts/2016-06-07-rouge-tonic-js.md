---
layout: post
title:  "Rouge `tonic` Demo"
author: pouwerkerk
---

# Rouge `tonic` Demo

## Default

Simply specify the `tonic` lexer without any options (` ```tonic...``` `).

```tonic
var greeting = "hello world!";
console.log(greeting);
```

## Read Only

### `readOnly=true`

```tonic?readOnly=true
var greeting = "hello world!";
console.log(greeting);
```

### `readOnly=false`

```tonic?readOnly=1
var greeting = "hello world!";
console.log(greeting);
```

### `readOnly`

```tonic?readOnly
var greeting = "hello world!";
console.log(greeting);
```

## Engine Version

### `nodeVersion=0.12.x`

```tonic?nodeVersion=0.12.x
process.version;
```

### `nodeVersion='>4.0.0'`

```tonic?nodeVersion=>4.0.0
process.version;
```

## Multiple Options

### `readOnly=false&nodeVersion=0.12.x`

```tonic?readOnly=false&nodeVersion=0.12.x
var greeting = "hello world!";
console.log(greeting);

process.version;
```

## Further Reading
* Tonic Embed options are parsed [here](https://github.com/njudah/tonic/blob/8f13dfd0959b1caf4a10ba59e1ab8b2c69b9cbf7/app/components/embed.js#L71-L72) and the full API is [here](https://tonicdev.com/docs/embed).
* The Rouge [PHP Lexer](https://github.com/jneen/rouge/blob/master/lib/rouge/lexers/php.rb) currently uses `find_fancy` options which are passed to the lexer from fenced blocks.

