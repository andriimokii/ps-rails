module ReviewsHelper
    def publish_status(review)
        if review.published?
            content_tag(:span, "Published 👌")
        else
            content_tag(:span, "Unpublished 🤬")
        end
    end
end
