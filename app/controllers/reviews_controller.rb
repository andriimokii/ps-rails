class ReviewsController < ApplicationController
  before_action :require_signin, except: [:index]
  before_action :set_movie

  def index
    @reviews = @movie.published_reviews
  end

  def new
    @review = @movie.reviews.new
  end

  def create
    if @movie.review_present?(current_user)
      redirect_to @movie, alert: "Can't create more than 1 review!"
    else
      @review = @movie.reviews.new(review_params)
      @review.user = current_user

      if @review.save
        redirect_to movie_reviews_url(@movie), notice: 'Thanks for your review!'
      else
        render :new
      end
    end
  end

  def destroy
    @review = @movie.reviews.find(params[:id])
    @review.destroy

    redirect_to(movie_reviews_url, danger: 'Review successfully deleted!', status: :see_other)
  end

  def edit
    @review = @movie.reviews.find(params[:id])
  end

  def update
    @review = @movie.reviews.find(params[:id])

    if @review.update(review_params)
      # flash[:notice] = "Movie successfully updated!"
      redirect_to movie_reviews_url(@movie), notice: 'Review successfully updated!'
    else
      render :edit
    end
  end

  private

  def review_params
    params.require(:review).permit(:stars, :comment)
  end

  def set_movie
    @movie = Movie.find_by!(slug: params[:movie_id])
  end
end
