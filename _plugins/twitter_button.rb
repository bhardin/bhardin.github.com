module Jekyll
  class CustomTwitter < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      "#{@text} <a href=\"https://twitter.com/share\" class=\"twitter-share-button\" data-text=\"#{@text}\" data-via=\"miscsecurity\" data-count=\"none\">Tweet</a>"
    end
  end
end

Liquid::Template.register_tag('twitter', Jekyll::CustomTwitter)