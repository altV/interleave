# Interleave

I was not able to tail -f several log streams from different applications, interleaving them with some blank lines.

So here it is:

interleave "heroku logs -t .." "heroku logs -t .."

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'interleave'
```

And then execute:

    $ interleave "app 1 output stream" "app 2 output stream"

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/interleave.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

