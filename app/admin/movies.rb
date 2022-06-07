ActiveAdmin.register Movie do
  permit_params :title, :rating, :total_gross, :description, :released_on, 
                :director, :duration, :slug, :youtube_embed_url

  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  scope :all
  scope :released
  scope :upcoming
  scope :recent
  scope :hits
  scope :flops

  controller do
    private

    def set_movie
      @movie = Movie.find_by!(slug: params[:id])
    end
  end

end
