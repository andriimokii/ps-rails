class Movie < ApplicationRecord
    has_many :reviews, -> { order(created_at: :desc) }, dependent: :destroy
    has_many :favorites, dependent: :destroy
    has_many :fans, through: :favorites, source: :user
    has_many :critics, through: :reviews, source: :user
    has_many :characterizations, dependent: :destroy
    has_many :genres, through: :characterizations

    RATINGS = %w(G PG PG-13 R NC-17)

    validates :rating, inclusion: { in: RATINGS }
    validates :title, :released_on, :duration, presence: true
    validates :description, length: { minimum: 25 }
    validates :total_gross, numericality: { greater_than_or_equal_to: 0 }
    validates :image_file_name, format: {
        with: /\w+\.(jpg|png)\z/i,
        message: "must be a JPG or PNG image"
    }

    def flop?
        if reviews.count > 50 && reviews.average(:stars).round >= 4
            return false
        end
    
        total_gross.blank? || total_gross < 225000000 
    end

    scope :recent, ->(max=5) { released.limit(max) }

    scope :upcoming, lambda { where("released_on > ?", Time.now).
        order(released_on: :asc) }

    scope :released, -> { where("released_on < ?", Time.now).
        order(released_on: :desc) }

    # def self.released
    #     where("released_on < ?", Time.now).order(released_on: :desc)
    # end

    scope :hits, -> { released.where("total_gross >= 300000000").
        order(total_gross: :desc) }

    # def self.hits
    #     where("total_gross >= 300000000").order(total_gross: :desc)
    # end

    scope :flops, -> { released.where("total_gross < 22500000").
        order(total_gross: :asc) }

    # def self.flops
    #     where("total_gross < 22500000").order(total_gross: :asc)
    # end

    scope :grossed_less_than, -> (amount){ released.where("total_gross < ?", amount) }
    scope :grossed_greater_than, -> (amount){ released.where("total_gross > ?", amount) }

    def self.recently_added
        order("created_at desc").limit(3)
    end

    def average_stars
        reviews.average(:stars) || 0.0
    end

    def average_stars_as_percent
        (average_stars / 5.0) * 100.0
    end
end
