# Trumptweets

Extremely basic gem that enables you to get tweets from Donald Trump starting at the time of presidency that can be used primarily to seed your database tables as varchar field.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'trumptweets'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install trumptweets

## Usage

### Basic
Depending on where you want to use it, add 
```ruby
require 'trumptweets'
```
to the top of the file.

From there, you can simply call
```ruby
Trumptweets.tweet
```
and it will return you a random tweet from Trump since his time of presidency

### Options

You can also call a specific type of tweet that mentions certain keywords. As of right now, there are a total of 5 options
```ruby
Trumptweets.obama
Trumptweets.hilary
Trumptweets.maga
Trumptweets.russia
Trumptweets.fake_news
```
Using one of these will get you a tweet that mentions something about the topic

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Trumptweets project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/kn-xu/trumptweets/blob/master/CODE_OF_CONDUCT.md).
