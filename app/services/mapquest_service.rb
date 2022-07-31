class MapquestService
  def self.get_directions(to, from)
    response = connection.get("/directions/v2/route?key=#{ENV['mapquest_key']}&from=#{from}&to=#{to}")

    parsed_json = JSON.parse(response.body, symbolize_names: true)
  end

  def self.connection
    Faraday.new(url: 'http://www.mapquestapi.com/')
  end
end
