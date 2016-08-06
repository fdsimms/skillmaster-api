json.array! @skills do |skill|
  json.extract! skill, :id, :sport_id, :name
end
