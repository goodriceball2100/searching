json.array! @posts do |post|
  json.id post.id
  json.title post.title
  json.content post.content
  json.image post.image
  json.name post.user.name
  json.user_sign_in current_user
end