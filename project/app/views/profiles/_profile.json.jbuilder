json.extract! profile, :id, :bio, :country, :socation, :city, :picture, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
