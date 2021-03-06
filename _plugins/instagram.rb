module Jekyll
  class InstagramTag < Liquid::Tag

    def initialize(tag_name, hash, tokens)
      super
      @hash           = hash.strip!
    end

    def render(context)
      "<div class='embed instagram' style='height:300px;float: right; margin: 5px 0 30px 30px;'>#{iframe_for(@hash)}</div>"
    end

    def iframe_for(hash)
      url = "//instagram.com/p/#{hash}/embed/"
      "<iframe src='#{url}' style='height:300px' frameborder='0' scrolling='no' allowtransparency='true'></iframe>"
    end

  end

end

Liquid::Template.register_tag('instagram', Jekyll::InstagramTag)
