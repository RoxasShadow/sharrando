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
  class << self
    def on(social, *things)
      things.each { |k, v| things[k] = CGI::escape(v) if v.is_a?(String) }
      Social.new.send(social, *things)
    end

    def configure
      if block_given?
        yield self
      else
        raise ArgumentError, 'A block is required as first parameter.'
      end
    end

    Social.list.each do |social|
      define_method(social) do |*things|
        self.on(social, *things)
      end
    end
  end

  def sharrando_on(social, *things)
    Sharrando.on(social, *things)
  end

  Social.list.each do |social|
    define_method(:"sharrando_on_#{social}") do |*things|
      Sharrando.on(social, *things)
    end
  end
end