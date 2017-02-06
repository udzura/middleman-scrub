# middleman-scrub

[![Build Status](https://travis-ci.org/udzura/middleman-scrub.svg?branch=master)](https://travis-ci.org/udzura/middleman-scrub)

Scrub the invalid letters which source file contains.

## Usage

```ruby
activate :scrub
```

### Config

```
activate :scrub,
  scrub_regexp: /[あ-お]/, # To add target letters
  target_filename: /\.html$/, # To specify target files
  verbose: true # Debug
```

## License

[MIT.](https://udzura.mit-license.org/)
