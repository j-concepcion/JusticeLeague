json.array!(@vote_items) do |vote_item|
  json.extract! vote_item, :id, :candidate_id
  json.url vote_item_url(vote_item, format: :json)
end
