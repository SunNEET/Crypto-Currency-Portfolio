require "net/http"
require "json"

class HomeController < ApplicationController
  def index
    url = "https://api.coinmarketcap.com/v2/listings/?"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    @ID_List = JSON.parse(response)

		url = 'https://api.coinmarketcap.com/v2/ticker/'
		uri = URI(url)
		response = Net::HTTP.get(uri)

		@coins = JSON.parse(response)
    @my_coins = ["BTC","ETH","XRP"]
  end

	def about
	end

  def lookup
  end

end
