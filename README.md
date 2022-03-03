# UkraineHeaderBanner

This gem enables you to simply include a banner in any Ruby on Rails app that will be shown to all Russian visitors. 
It will look like this:

![example image](https://github.com/gfriebe/ukraine_header_banner/blob/master/public/example_image.png)

It means: 
```
Dear Russian friends,
The world needs you. Come out, be heard and
STOP PUTIN'S WAR.
```

Help convince all Russians to stand up and stop this war!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ukraine_header_banner'
```

And then execute:

    $ bundle


## Usage

Add this anywhere in your view or layout file(s):
```
<%= show_ukraine_header_banner %>
```

## Disclaimer
This is a very quick an dirty work. There are no tests and there might be display issues on certain devices.
This gem is meant to give anyone access to a Rails app, the ability to very simply add a message, as I believe
we need to get through to Russians on every possible channel. Only Russians themselves have the power to end this war 
quickly while opening up a future we can then build upon.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
