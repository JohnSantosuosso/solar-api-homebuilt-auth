require 'net/http'

class Api::V1::ExternalServicesController < Api::V1::BaseController
  def fetch_data
    uri = URI('https://random.dog/woof.json')
    response = Net::HTTP.get(uri)

    render json: response
  end

  private

end
