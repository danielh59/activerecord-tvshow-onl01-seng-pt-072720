class AddSeasonToShows < ActiveRecord::Migration[5.2]
  def change
      add_column :shows, :season, :string
  end

  def highest_rating
    Show.maximum(:rating)
  end

  def most_popular_show
    Show.where(highest_rating)
  end

  def lowest_rating
    Show.minimum(:rating)
  end

  def least_popular_show
    Show.where(lowest_rating)
  end

  def ratings_sum
    Show.sum(:rating)
  end

  def popular_shows
    Show.where("rating > ?", 5)
  end

  def shows_by_alphabetical_order
      Show.order
  end
end
