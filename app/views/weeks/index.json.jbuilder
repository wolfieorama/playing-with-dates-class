json.array!(@weeks) do |week|
  json.extract! week, :id, :tarehe, :week
  json.url week_url(week, format: :json)
end
