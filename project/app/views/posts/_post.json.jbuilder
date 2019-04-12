json.extract! post, :id, :likes, :flags, :dislikes, :attachment, :string, :title, :body, :image, :user_id, :dumpster_id, :super_admin_id, :admin_id, :wall_id, :created_at, :updated_at
json.url post_url(post, format: :json)
