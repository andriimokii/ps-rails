class MoviesController < ApplicationController
    def index
        @movies = Movie.all
        # @movies = ["Iron Man", "Superman", "Spider-Man", "Dog"]
    end

    def show
        @movie = Movie.find(params[:id])
    end

    def edit
        @movie = Movie.find(params[:id])
    end

    def update
        # fail
        @movie = Movie.find(params[:id])
        @movie.update(movie_params)

        redirect_to @movie
    end

    def new
        @movie = Movie.new
    end

    def create
        # fail
        @movie = Movie.create(movie_params)

        redirect_to @movie 
    end

    def destroy
        @movie = Movie.find(params[:id])
        @movie.destroy

        redirect_to(movies_url, status: :see_other)
    end

    private

    def movie_params
        params.require(:movie)
            .permit(:title, :description, :rating, :released_on, :total_gross)
    end


end
