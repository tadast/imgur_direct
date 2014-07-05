# ImgurDirect

ImgurDirect takes any imgur url and returns direct urls to images within the link

## Installation

Add this line to your application's Gemfile:

    gem 'imgur_direct'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install imgur_direct

## Usage

Make sure to register for [Imgur API usage](http://api.imgur.com/oauth2/addclient) and set `IMGUR_CLIENT_ID` in your environment. Then you can use it in your code as per examples below. 

Note that it always returns an array. This is to make the api consistent for galleries, albums and direct links.

```ruby
ENV['IMGUR_CLIENT_ID'] = 'xxxxyyyzzzz'
require 'imgur_direct'

# Direct links (that actually don't need resolving)
ImgurDirect.new('https://i.imgur.com/neKar7M.gif').urls
# => %w(https://i.imgur.com/neKar7M.gif)

# Gallery links
ImgurDirect.new('http://imgur.com/gallery/40NpN').urls
# => ["http://i.imgur.com/JOCymfx.png", "http://i.imgur.com/u0sWGjK.png", "http://i.imgur.com/1cj1Of1.png"

# Album links
ImgurDirect.new('http://imgur.com/a/gYZp4').urls
# => ["http://i.imgur.com/q7f0zNh.gif", "http://i.imgur.com/y0lEyeH.gif", "http://i.imgur.com/fy7liyk.gif", "http://i.imgur.com/KhB46eF.gif", "http://i.imgur.com/0TUJIHT.gif"]

# Indirect links
ImgurDirect.new('http://imgur.com/cp3b6Ra').urls
# => %w(http://i.imgur.com/cp3b6Ra.gif)

# Returns the same url in case the given url is non-imgur (default on)
ImgurDirect.new('http://google.com').urls
# => ["http://google.com"]
ImgurDirect.new('http://google.com').urls(:fallback_plz)
# => ["http://google.com"]

# Returns empty array in case the given url is non-imgur
ImgurDirect.new('http://google.com').urls(false)
# => []
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
