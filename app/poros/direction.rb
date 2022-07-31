class Direction
  attr_reader :distance, :directions, :travel_time

  def initialize(info)
    @distance = info[:route][:distance]
    @directions = format_directions(info)
    @travel_time = info[:route][:realTime]
  end

  def format_directions(info)
    info[:route][:legs][0][:maneuvers].map { |m| m[:narrative] }.join('')
  end
end
