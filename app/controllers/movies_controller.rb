class MoviesController < ApplicationController
  before_action :require_signin, except: [:index, :show]
  before_action :require_admin, except: [:index, :show]
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  def index
    @movies = Movie.send(movies_filter)

    # case params[:filter]
    # when "upcoming"
    #   @movies = Movie.upcoming
    # when "recent"
    #   @movies = Movie.recent(3)
    # when "hits"
    #   @movies = Movie.hits
    # when "flops"
    #   @movies = Movie.flops
    # else
    #   @movies = Movie.released
    # end
    # @movies = ["Iron Man", "Superman", "Spider-Man", "Dog"]
  end

  def show
    @fans = @movie.fans
    @genres = @movie.genres.order(:name)
    @reviews = @movie.published_reviews

    # @favorite = @fans.include?(current_user)
    if current_user
      @favorite = current_user.favorites.find_by(movie_id: @movie.id)
    end
  end

  def edit
  end

  def update
    # fail
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
    @movie.destroy

    redirect_to(movies_url, danger: "Movie successfully deleted!", status: :see_other)
  end

  private

  def movie_params
    params.require(:movie)
          .permit(:title, :description, :rating, :released_on, :total_gross,
                  :director, :duration, :main_image, :youtube_embed_url,
                  genre_ids: [])
  end

  def movies_filter
    if params[:filter].in? %w(upcoming recent hits flops)
      params[:filter]
    else
      :released
    end
  end

  def set_movie
    @movie = Movie.find_by!(slug: params[:id])
  end
end
