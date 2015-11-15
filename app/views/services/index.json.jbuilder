json.array!(@services) do |service|
  json.extract! service, :id, :name, :icon
  json.url service_url(service, format: :json)
end
