class CreateShows < ActiveRecord::Migration[5.2]
  def change
      create_table :shows do |shows|
        shows.string :name
        shows.string :network
        shows.string :day
        shows.integer :rating
    end
  end
end
