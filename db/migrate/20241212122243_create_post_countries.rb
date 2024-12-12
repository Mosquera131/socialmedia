class CreatePostCountries < ActiveRecord::Migration[7.2]
  def change
    create_table :post_countries do |t|
      t.string :country_name
      t.string :favorite_food
      t.text :favorite_excursion
      t.date :date_of_arrival
      t.date :date_of_departure
      t.text :comment

      t.timestamps
    end
  end
end
