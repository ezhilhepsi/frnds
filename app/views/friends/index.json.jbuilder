json.array!(@friends) do |friend|
  json.extract! friend, :id, :contact_names, :phone_number, :email_id, :description, :body, :image
  json.url friend_url(friend, format: :json)
end
