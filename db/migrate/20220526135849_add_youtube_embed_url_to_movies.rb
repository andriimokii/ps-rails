class AddYoutubeEmbedUrlToMovies < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :youtube_embed_url, :string
  end
end
