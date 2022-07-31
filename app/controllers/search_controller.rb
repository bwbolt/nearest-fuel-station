class SearchController < ApplicationController
  def index
    @station = NrelFacade.create_station(params['location'])
    @directions = MapquestFacade.create_directions(@station.address, params['location'])
  end
end
