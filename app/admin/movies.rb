ActiveAdmin.register Movie do
  permit_params :title, :rating, :total_gross, :description, :released_on, 
                :director, :duration, :slug, :youtube_embed_url

  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  controller do
    private

    def set_movie
      @movie = Movie.find_by!(slug: params[:id])
    end
  end

end
