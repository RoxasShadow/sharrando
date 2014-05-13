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
  def sharrando_social_url(social, *things)
    things.each { |k, v| things[k] = CGI::escape(v) if v.is_a?(String) }
    Social.new.send(social, *things)
  end
end