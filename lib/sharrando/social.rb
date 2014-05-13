#--
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                    Version 2, December 2004
#
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
#  0. You just DO WHAT THE FUCK YOU WANT TO.
#++

module Sharrando
  class Social
    def email(subject: subject, body: body)
      "mailto:?to=&subject=#{subject}&body=#{body.gsub("\n", "%0D%0A")}"
    end

    def twitter(text: text)
      "https://twitter.com/home?status=#{text}"
    end

    def facebook(title: title, url: url, description: description, image: image)
      if !description || description.empty?
        "http://www.facebook.com/sharer.php?t=#{title}&u=#{url}"
      else
        "http://www.facebook.com/sharer.php?s=100&p[url]=#{url}&p[title]=#{title}&p[summary]=#{description}&p[images][0]=#{image}"
      end
    end

    def google_plus(url: url, text: text)
      "https://plus.google.com/share?url=#{url}&t=#{text}"
    end

    def tumblr(data_type: data_type, contents: contents = {})
      raise ArgumentError, "Data type must be <link>, <text>, <photo> or <quote>" unless %i(link text photo quote).include? data_type
      
      "http://www.tumblr.com/share/#{data_type}?".tap do |url|
        (contents ||= {}).each { |key, val| url << "#{key}=#{CGI::escape(val)}&"}
      end
    end

    def delicious(url: url, title: title)
      "http://www.delicious.com/save?url=#{url}&title=#{title}&jump=yes&pic=#{image}"
    end

    def linkedin(url: url, title: title, description: description, source: source)
      "http://www.linkedin.com/shareArticle?mini=true&url=#{url}&title=#{title}&summary=#{description}&source=#{source}"
    end
  end
end