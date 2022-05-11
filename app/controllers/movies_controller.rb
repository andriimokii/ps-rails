class MoviesController < ApplicationController
    def index
        @movies = Movie.all
        # @movies = ["Iron Man", "Superman", "Spider-Man", "Dog"]
    end
end
