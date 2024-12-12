json.extract! post_country, :id, :country_name, :favorite_food, :favorite_excursion, :date_of_arrival, :date_of_departure, :comment, :created_at, :updated_at
json.url post_country_url(post_country, format: :json)
