class MoviesController < ApplicationController
  def show
    if params[:id] == "1"
      @title = "Parasite"
      @director = "Bong Joon-ho"
    elsif params[:id] == "2"
      @title = "Drop Dead Fred"
      @director = "Ron Howard"
    end
  end
end
