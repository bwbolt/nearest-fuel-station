class NrelFacade
  def self.create_station(location)
    parsed_json = NrelService.get_station(location)

    Station.new(parsed_json[:fuel_stations].first)
  end
end
