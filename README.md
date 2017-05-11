# luhn.cr

Very simple library to calculate and validate Luhn numbers.

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  luhn:
    github: akzhan/luhn.cr
```

## Usage

```crystal
require "luhn"

number = "4111111111111111"

Luhn.valid? number
# => true
```

## Credits

This shard is fork of [luhn-ruby](https://github.com/rolfb/luhn-ruby) gem. 

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Contributors

- [rolfb](https://github.com/rolfb) Rolf Bjaanes - creator of ruby gem
- [dvrensk](https://github.com/dvrensk) David Vrensk
- [Koronen](https://github.com/Koronen) Victor Koronen
- [alan-andrade](https://github.com/alan-andrade) Alan Andrade
- [akzhan](https://github.com/akzhan) Akzhan Abdulin - maintainer of crystal shard
