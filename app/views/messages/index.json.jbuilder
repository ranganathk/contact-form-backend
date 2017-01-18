json.data @msgs do |msg|
  json.id msg.id
  json.username msg.username
  json.email msg.email
  json.description msg.description
end
