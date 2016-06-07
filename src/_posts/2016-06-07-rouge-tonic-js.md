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

### `readOnly=true`

```tonic_js?readOnly=true
var greeting = "hello world!";
console.log(greeting);
```

### `readOnly=false`

```tonic_js?readOnly=1
var greeting = "hello world!";
console.log(greeting);
```

### `readOnly`

```tonic_js?readOnly
var greeting = "hello world!";
console.log(greeting);
```

## Engine Version

### `nodeVersion=0.12.x`

```tonic_js?nodeVersion=0.12.x
process.version;
```

### `nodeVersion='>4.0.0'`

```tonic_js?nodeVersion=>4.0.0
process.version;
```

## Multiple Options

### `readOnly=false&nodeVersion=0.12.x`

```tonic_js?readOnly=false&nodeVersion=0.12.x
var greeting = "hello world!";
console.log(greeting);

process.version;
```

## Further Reading
* Tonic Embed options are parsed [here](https://github.com/njudah/tonic/blob/8f13dfd0959b1caf4a10ba59e1ab8b2c69b9cbf7/app/components/embed.js#L71-L72) and the full API is [here](https://tonicdev.com/docs/embed).
* The Rouge [PHP Lexer](https://github.com/jneen/rouge/blob/master/lib/rouge/lexers/php.rb) currently uses `find_fancy` options which are passed to the lexer from fenced blocks.

