module Jekyll
  class PostImage < Liquid::Tag

    def initialize(image_name, alt, align)
      super
      @image_name = image_name
      @alt = alt
      @align = align
    end

    def render(context)
      alignclass = @align
      "<div class='#{alignclass}'>Hello</div>"
    end
    #
    # def iframe_for(hash)
    #   url = "//instagram.com/p/#{hash}/embed/"
    #   "<iframe src='#{url}' style='height:300px' frameborder='0' scrolling='no' allowtransparency='true'></iframe>"
    # end

  end

end

Liquid::Template.register_tag('postimage', Jekyll::PostImage)
