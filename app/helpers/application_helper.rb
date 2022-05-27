module ApplicationHelper
    def main_image(object)
        if object.main_image.attached?
            image_tag object.main_image.variant(resize_to_limit: [150, nil])
        else
            image_tag "placeholder.png" 
        end
    end
end
