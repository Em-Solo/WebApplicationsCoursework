json.extract! movie, :id, :title, :genre, :runtime, :watch_date, :score, :created_at, :updated_at
json.url movie_url(movie, format: :json)
