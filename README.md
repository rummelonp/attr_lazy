# AttrLazy

Define an accessor to class that do lazy evaluation.

## Installation

Add this line to your application's Gemfile:

    gem 'attr_lazy'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install attr_lazy

## Usage

```ruby
require 'attr_lazy'

class Foo
  attr_lazy_reader :bar do
    # high cost initializer
  end
  attr_lazy_accessor :baz do
    # high cost initializer
  end
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Copyright

Copyright (c) 2013 [Kazuya Takeshima](mailto:mail@mitukiii.jp). See [LICENSE][license] for details.

[license]: LICENSE.md
