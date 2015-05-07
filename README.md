# Shell Base

Ruby Shell Base Library Gem.

## Installation

Add this line to your application's Gemfile:

    gem 'shell-base'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install shell-base

## Usage

```ruby
class ExampleShell < ShellBase
  prompt "example:$ "

  def hello(*params)
    puts "hello " + params.join(" ") + "."
    @prompt = "example:#{params[0] || ''}:$ "
  end
end
ExampleShell.new
```

for example implemented `hello` command.

And exit to `exit` command.

`@prompt` instance variable is prompt string.

## Contributing

1. Fork it ( https://github.com/myun2ext/shell-base/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
