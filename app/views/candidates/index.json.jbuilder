json.array!(@candidates) do |candidate|
  json.extract! candidate, :id, :first_name, :middle_name, :last_name, :position, :age, :agenda, :achievements, :votes_rendered
  json.url candidate_url(candidate, format: :json)
end
