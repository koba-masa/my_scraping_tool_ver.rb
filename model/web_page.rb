require 'open-uri'
require 'nokogiri'

require 'model/selector'

class WebPage
  def initialize(url)
    raise ArgumentError.new('URLが未設定です。') if url.nil? url.empty?
    @url = url
    open()
  end

  def open()
    @response = URI.open(@url)
  end

  def status()
    @response.status
  end
  
  def location()
    @response.meta.key?(:Location) ? @response.meta[:Location] : ""
  end

  def select(selector)
    results = []
  end
end