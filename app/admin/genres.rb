# frozen_string_literal: true

ActiveAdmin.register Genre do
  permit_params :name, :slug, :description
  before_action :set_genre, only: [:show, :edit, :update, :destroy]

  index as: :grid, columns: 5 do |genre|
    div style: 'text-align:center;' do
      resource_selection_cell genre
      a main_image(genre), href: admin_genre_path(genre)
      para do
        a genre.name, href: admin_genre_path(genre)
      end
    end
  end

  controller do
    private

    def set_genre
      @genre = Genre.find_by!(slug: params[:id])
    end

  end
end
