class SearchController < ApplicationController
  def index
    @station = NrelFacade.create_station(params['location'])
    # binding.pry
  end
end
