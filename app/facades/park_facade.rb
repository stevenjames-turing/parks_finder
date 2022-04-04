class ParkFacade
  def self.top_rated
    json = MovieService.top_rated

    @top_rated = json[:results].map do |movie_data|
      Movie.new(movie_data)
    end
  end

  def self.parks_by_state(state)
    json = ParkService.parks_by_state(state)

    @parks = json[:data].map do |park_data|
      Park.new(park_data)
    end
  end
end