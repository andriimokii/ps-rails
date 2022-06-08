ActiveAdmin.register Review do
  permit_params :stars, :comment, :movie_id, :user_id, :published

  # batch_action :destroy, false

  batch_action :unpublish do |ids|
    batch_action_collection.find(ids).each do |review|
      review.update!(published: false) 
    end
    redirect_to collection_path, notice: "Selected reviews were Unpublished!"
  end

  batch_action :publish do |ids|
    batch_action_collection.find(ids).each do |review|
      review.update!(published: true) 
    end
    redirect_to collection_path, notice: "Selected reviews were Published!"
  end

  scope :all
  scope :published
  scope :unpublished
end
