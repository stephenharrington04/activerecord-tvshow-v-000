class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    #Show.select(*).where(":rating = ?", Show.highest_rating)
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    Show.lowest_rating.name
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    Show.where(":rating > ?", 5)
  end

  def self.shows_by_alphabetical_order
    Show.order(:name)
  end

end
