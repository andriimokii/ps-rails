# frozen_string_literal: true

ActiveAdmin.register Characterization do
  permit_params :movie_id, :genre_id
end
