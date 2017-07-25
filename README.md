# TypografClient

[![Code Climate](https://img.shields.io/codeclimate/github/pandalowry/typograf_client.svg)](https://codeclimate.com/github/pandalowry/typograf_client)

A Ruby gem to get [Typograf webservice](https://www.artlebedev.ru/typograf/webservice/) functionality on your text.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'typograf_client', :git => "git://github.com/pandalowry/typograf_client.git"
```

And then execute:

    $ bundle

<!-- Or install it yourself as:

    $ gem install typograf_client -->

## Usage

```ruby
text = 'Брат Фрэнсис Джерард из Юты, постившийся в пустыне, возможно, и не нашел бы священные документы, если бы не паломник с препоясанными чреслами.'

puts RemoteTypograf::Request.new(text).result #=> "<p>Брат Фрэнсис Джерард из&nbsp;Юты, постившийся в&nbsp;пустыне, возможно, и&nbsp;не&nbsp;нашел&nbsp;бы священные документы, если&nbsp;бы не&nbsp;паломник с&nbsp;препоясанными чреслами.<br />\n</p>" 
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/pandalowry/typograf_client.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

