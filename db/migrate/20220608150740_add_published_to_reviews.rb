# frozen_string_literal: true

class AddPublishedToReviews < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :published, :boolean, default: true
  end
end
