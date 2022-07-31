class NrelService
  def self.get_station(location)
    response = connection.get("/api/alt-fuel-stations/v1/nearest.json?fuel_type=ELEC&location=#{location}&limit=1&api_key=#{ENV['nrel_key']}")

    parsed_json = JSON.parse(response.body, symbolize_names: true)
  end

  def self.connection
    Faraday.new(url: 'https://developer.nrel.gov')
  end
end
