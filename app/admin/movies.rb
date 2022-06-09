ActiveAdmin.register Movie do
  permit_params :title, :rating, :total_gross, :description, :released_on, 
                :director, :duration, :slug, :youtube_embed_url

  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  index as: :grid, columns: 5 do |movie|
    div style: "text-align:center;" do
      resource_selection_cell movie
      a main_image(movie), href: admin_movie_path(movie)
      para do 
        a movie.title, href: admin_movie_path(movie)
      end
    end
  end

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
