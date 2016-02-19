json.array!(@wprs) do |wpr|
  json.extract! wpr, :id, :c_score, :a_score, :n_score
  json.url wpr_url(wpr, format: :json)
end
