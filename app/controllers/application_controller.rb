# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  before_filter :get_bitcoin_rate

  private
  def get_bitcoin_rate
    @btc_usd = "puto"
    response = Typhoeus::Request.get("http://bitcoincharts.com/t/weighted_prices.json")
    @btc_usd = ActiveSupport::JSON.decode(response.body)["USD"]["24h"]
    response = Typhoeus::Request::get("http://www.google.com/ig/calculator?hl=en&q=#{@btc_usd}USD%3D%3FARS")
    @btc_ars = ActiveSupport::JSON.decode(response.body)["rhs"].gsub(/Argentine Pesos/,"").to_f
  end
end
