Sharrando
=========
Get URLs to share things in social networks like Facebook, Twitter, Linkedin, Tumblr, etc.

Install
-------
`$ gem install sharrando`

Example
-------
```ruby
require 'sharrando'
include Sharrando

url = sharrando_on(:facebook, title: 'Sharrando', url: 'http://github.com/RoxasShadow/sharrando')
puts "<a href=\"#\" onclick=\"window.open('#{url}');\">Share on Facebook!</a>"

url = sharrando_on_twitter(text: 'Ma quanto spigne sharrando')
puts "<a href=\"#\" onclick=\"window.open('#{url}');\">Share on Twitter!</a>"
```
