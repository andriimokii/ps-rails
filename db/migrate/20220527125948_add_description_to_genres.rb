# frozen_string_literal: true

class AddDescriptionToGenres < ActiveRecord::Migration[7.0]
  def change
    add_column :genres, :description, :string
  end
end
