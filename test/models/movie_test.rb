require "test_helper"

class MovieTest < ActiveSupport::TestCase
  test "movie is valide with a title and director" do
    movie = Movie.new(title: "Parasite", director: "Bong Joon-ho")

    assert_equal "Parasite", movie.title
    assert_equal "Bong Joon-ho", movie.director
  end
end
