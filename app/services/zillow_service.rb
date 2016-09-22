require "rubygems"
require "crack"
require "json"

class ZillowService
  def initialize
    @connection = Faraday.new("http://www.zillow.com")
    @connection.params["zws-id"] = ENV["zillow_key"]
  end

  def get_neighborhoods(state, city)
    @connection.params["state"] = "#{state}"
    @connection.params["city"] = "#{city}"
    @connection.params["childtype"] = "neighborhood"
    info = @connection.get "/webservice/GetRegionChildren.htm"
    response = Crack::XML.parse(info.body)
    response.first[1]["response"]["list"]["region"]
  end

end
