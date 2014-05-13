Sharrando
=========
Get URLs to share things in social networks like Facebook, Twitter, Linkedin, Tumblr, etc.

Install
-------
`gem install sharrando`

Example
-------
```ruby
require 'sharrando'
include Sharrando

url = sharrando_social_url(:facebook, title: 'Sharrando', url: 'http://github.com/RoxasShadow/sharrando')
puts "<a href=\"#\" onclick=\"window.open('#{url}');\">Share on Facebook!</a>"
```
