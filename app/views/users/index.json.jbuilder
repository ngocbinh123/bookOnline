json.array!(@users) do |user|
  json.extract! user, :id, :id, :email, :password, :remember_token, :published_at, :updated_atL
  json.url user_url(user, format: :json)
end
