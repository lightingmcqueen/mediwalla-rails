json.array!(@accreditations) do |accreditation|
  json.extract! accreditation, :id, :name
  json.url accreditation_url(accreditation, format: :json)
end
