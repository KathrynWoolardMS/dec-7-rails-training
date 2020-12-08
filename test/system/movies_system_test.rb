require "application_system_test_case"

class MoviesSystemTest < ApplicationSystemTestCase
  test "visiting movie 1" do
    Movie.new(title: "Parasite", director: "Bong Joon-ho")
  #     As a user,
  # when I visit /movies/1
    visit "/movies/1"
    # I see the title of the movie "Parasite"
    assert_text "Parasite"
    # I also see the name of the director "Bong Joon-ho"
    assert_text "Bong Joon-ho"
  end

  test "visiting movie 2" do
    skip
    # As a user
    visit "/movies/2"
    # When I visit a movie with the id 2
    assert_text "Drop Dead Fred"
    # I see the title for that movie
    assert_text "Ron Howard"
  end
end
