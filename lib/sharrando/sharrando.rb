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
  def sharrando_on(social, *things)
    things.each { |k, v| things[k] = CGI::escape(v) if v.is_a?(String) }
    Social.new.send(social, *things)
  end

  Social.list.each do |social|
    define_method(:"sharrando_on_#{social}") do |*things|
      sharrando_on(social, *things)
    end
  end
end