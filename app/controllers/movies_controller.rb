class MoviesController < ApplicationController
    def index
        @movies = Movie.released
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
        if @movie.update(movie_params)
            # flash[:notice] = "Movie successfully updated!"
            redirect_to @movie, notice: "Movie successfully updated!"
        else
            render :edit
        end
    end

    def new
        @movie = Movie.new
    end

    def create
        # fail
        @movie = Movie.new(movie_params)

        if @movie.save
            redirect_to @movie, notice: "Movie successfully created!"
        else
            render :new
        end
        
    end

    def destroy
        @movie = Movie.find(params[:id])
        @movie.destroy

        redirect_to(movies_url, danger: "Movie successfully deleted!", status: :see_other)
    end

    private

    def movie_params
        params.require(:movie)
            .permit(:title, :description, :rating, :released_on, :total_gross,
                    :director, :duration, :image_file_name)
    end


end
