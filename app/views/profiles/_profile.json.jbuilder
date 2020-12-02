json.extract! profile, :id, :username, :user_id, :bio, :prefers, :secretsanta, :created_at, :updated_at
json.url profile_url(profile, format: :json)
