class NrelFacade
  def self.create_station(location)
    parsed_json = NrelService.get_station(location)

    a = Station.new(parsed_json[:fuel_stations].first)
    binding.pry
  end
end
