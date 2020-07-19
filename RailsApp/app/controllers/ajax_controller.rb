class AjaxController < ApplicationController
  layout 'ajax'
  require 'net/http'
  require 'net/https'

  def index
  end

  def data
    # url = URI('https://news.yahoo.co.jp/pickup/rss.xml')
    url = URI('http://news.yahoo.co.jp/pickup/rss.xml')
    # http = Net::HTTP.new(url.host)
    p url.port
    # http = Net::HTTP.new(url.host, url.port)
    http = Net::HTTP.new(url.host, 443)
    http.use_ssl = true
    http.ca_file = 'GTE_CyberTrust_Global_Root.pem'
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    http.verify_depth = 5
    response = http.get(url)
    @data = Hash.from_xml(response.body).to_json.html_safe
    logger.info @data
  end

end
