json.extract! user, :id, :mail, :name, :password, :blacklist_id, :super_admin_id, :administrator_id, :created_at, :updated_at
json.url user_url(user, format: :json)
