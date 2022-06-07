ActiveAdmin.register Review do
  permit_params :stars, :comment, :movie_id, :user_id
end
