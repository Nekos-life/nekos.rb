require 'nekos/api'

# nekoslife base module
module NekosLife
  # The main module for interaction
  class Client
    @image_endpoints = []

    # @!macro [attach] add_image_endpoint
    #   @method $2
    #     Gets an image of `$2`
    #     @return [String] the image URL with the `$2` type.
    # @!visibility private
    def self.add_image_endpoint(endpoint)
      @image_endpoints.push endpoint
      attr_reader endpoint
      define_method endpoint.downcase do
        API.img(endpoint)['url']
      end
    end

    add_image_endpoint('feet')
    add_image_endpoint('yuri')
    add_image_endpoint('trap')
    add_image_endpoint('futanari')
    add_image_endpoint('hololewd')
    add_image_endpoint('lewdkemo')
    add_image_endpoint('solog')
    add_image_endpoint('feetg')
    add_image_endpoint('cum')
    add_image_endpoint('erokemo')
    add_image_endpoint('les')
    add_image_endpoint('wallpaper')
    add_image_endpoint('lewdk')
    add_image_endpoint('ngif')
    add_image_endpoint('meow')
    add_image_endpoint('tickle')
    add_image_endpoint('lewd')
    add_image_endpoint('feed')
    add_image_endpoint('gecg')
    add_image_endpoint('eroyuri')
    add_image_endpoint('eron')
    add_image_endpoint('cum_jpg')
    add_image_endpoint('bj')
    add_image_endpoint('nsfw_neko_gif')
    add_image_endpoint('solo')
    add_image_endpoint('kemonomimi')
    add_image_endpoint('nsfw_avatar')
    add_image_endpoint('gasm')
    add_image_endpoint('poke')
    add_image_endpoint('anal')
    add_image_endpoint('slap')
    add_image_endpoint('hentai')
    add_image_endpoint('avatar')
    add_image_endpoint('erofeet')
    add_image_endpoint('holo')
    add_image_endpoint('keta')
    add_image_endpoint('blowjob')
    add_image_endpoint('pussy')
    add_image_endpoint('tits')
    add_image_endpoint('holoero')
    add_image_endpoint('lizard')
    add_image_endpoint('pussy_jpg')
    add_image_endpoint('pwankg')
    add_image_endpoint('classic')
    add_image_endpoint('kuni')
    add_image_endpoint('waifu')
    add_image_endpoint('pat')
    add_image_endpoint('kiss')
    add_image_endpoint('femdom')
    add_image_endpoint('neko')
    add_image_endpoint('spank')
    add_image_endpoint('cuddle')
    add_image_endpoint('erok')
    add_image_endpoint('fox_girl')
    add_image_endpoint('boobs')
    add_image_endpoint('Random_hentai_gif')
    add_image_endpoint('smallboobs')
    add_image_endpoint('hug')
    add_image_endpoint('ero')

    alias_method :holo_lewd, :hololewd
    alias_method :lwed_holo, :hololewd
    alias_method :lewd_kemo, :lewdkemo
    alias_method :solo_girl, :solog
    alias_method :ero_kemo, :erokemo
    alias_method :lewd_kitsune, :lewdk
    alias_method :neko_gif, :ngif
    alias_method :ero_yuri, :eroyuri
    alias_method :ero_neko, :eron
    alias_method :ero_feet, :erofeet
    alias_method :holo_ero, :holoero
    alias_method :ero_holo, :holoero
    alias_method :erokitsune, :erok
    alias_method :small_boobs, :smallboobs

    # OwOifys text.
    # @param text [String] text to owoify
    # @return [String] owoified text
    def owoify(text)
      API.get("owoify?text=#{URI.encode(text)}")['owo']
    end

    # Chat with the API
    # @param text [String] text to query
    # @param owo [true, false] whether or not to owoify response text
    # @return [String] the response
    def chat(text, owo = false)
      API.get("chat?text=#{URI.encode(text)}#{'&owo=true' if owo}")['response']
    end

    # Gets a random fact
    # @return [String] the fact
    def fact
      API.get('fact')['fact']
    end

    # Gets a random question
    # @return [String] the question
    def why
      API.get('why')['why']
    end

    # Gets an ascii cat
    # @return [String] the cat
    def cat
      API.get('cat')['cat']
    end

    # Gets an ascii cat
    # @return [EightBallResponse] the response given with text and an image url
    def eight_ball
      EightBallResponse.new(API.get('8ball'))
    end
    alias_method :eightball, :eight_ball
  end

  # A response from the 8ball endpoint
  class EightBallResponse
    # @return [String] the response in text form.
    attr_reader :text
    alias_method :to_s, :text

    # @return [String] the response in image form.
    attr_reader :image_url

    # @!visibility private
    def initialize(data)
      @text = data['response']
      @image_url = data['url']
    end
  end
end
