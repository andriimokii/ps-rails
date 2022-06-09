ActiveAdmin.register Review do
  permit_params :stars, :comment, :movie_id, :user_id, :published

  action_item :publish, only: :show do
    link_to "Publish", publish_admin_review_path(review), method: :patch unless review.published?
  end

  action_item :unpublish, only: :show do
    link_to "Unpublish", unpublish_admin_review_path(review), method: :patch if review.published?
  end

  member_action :publish, method: :patch do
    review = Review.find(params[:id])
    review.update!(published: true)
    redirect_to admin_review_path(review), notice: "Review was published!"
  end

  member_action :unpublish, method: :patch do
    review = Review.find(params[:id])
    review.update!(published: false)
    redirect_to admin_review_path(review), notice: "Review was unpublished!"
  end

  # batch_action :destroy, false
  scope :all
  scope :published do |reviews|
    reviews.where(published: true)
  end
  scope :unpublished do |reviews|
    reviews.where(published: false)
  end

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
end
