# TypografClient

A Ruby gem to get [Typograf webservice](https://www.artlebedev.ru/typograf/webservice/) functionality on your text.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'typograf_client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install typograf_client

## Usage

```ruby
text = 'Брат Фрэнсис Джерард из Юты, постившийся в пустыне, возможно, и не нашел бы священные документы, если бы не паломник с препоясанными чреслами.'

puts RemoteTypograf::Request.new(text).result
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/pandalowry/typograf_client.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

