ActiveAdmin.register Favorite do
  permit_params :movie_id, :user_id
  before_action :set_movie, only: %i[create destroy]

  controller do
    private

    def set_movie
      @movie = Movie.find_by!(slug: params[:movie_id])
    end
  end
end
