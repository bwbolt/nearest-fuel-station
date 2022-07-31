class MapquestFacade
  def self.create_directions(to, from)
    parsed_json = MapquestService.get_directions(to, from)

    Direction.new(parsed_json)
  end
end
