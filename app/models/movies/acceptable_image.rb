# frozen_string_literal: true

module Movies
  class AcceptableImage
    # access movie object without @
    attr_reader :movie

    # delegate attributes of movie object to be used in this class
    delegate :main_image, :errors, to: :movie

    # initialize class with movie to be used
    def initialize(movie)
      @movie = movie
    end

    # call the function
    def call
      return unless main_image.attached?

      unless main_image.blob.byte_size <= 1.megabyte
        errors.add(:main_image, 'is bigger than 1 Megabyte')
      end

      valid_content_types = ['image/png', 'image/jpeg']

      unless main_image.blob.content_type.in? valid_content_types
        errors.add(:main_image, 'is not PNG or JPEG image')
      end
    end
  end
end
