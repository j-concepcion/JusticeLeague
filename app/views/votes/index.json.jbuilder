json.array!(@votes) do |vote|
  json.extract! vote, :id, :candidate_id
  json.url vote_url(vote, format: :json)
end
