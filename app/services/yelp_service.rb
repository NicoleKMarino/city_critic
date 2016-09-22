require 'yelp'
class YelpService

  def initialize

    @client = Yelp::Client.new({ consumer_key: ENV["consumer_key"],
      consumer_secret: ENV["consumer_secret"],
      token: ENV["token"],
      token_secret: ENV["token_secret"]
      })
    end
    
    def get_resturaunts(city)
      params = { term: 'food',
        limit: 10}
        response = @client.search(city, params)
        response.businesses
      end

    end
