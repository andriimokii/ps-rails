ActiveAdmin.register Genre do
  permit_params :name, :slug, :description
  before_action :set_genre, only: [:show, :edit, :update, :destroy]

  controller do
    private

    def set_genre
      @genre = Genre.find_by!(slug: params[:id])
    end

  end
end
