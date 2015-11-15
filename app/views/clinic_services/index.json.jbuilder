json.array!(@clinic_services) do |clinic_service|
  json.extract! clinic_service, :id, :clinic_id, :service_id
  json.url clinic_service_url(clinic_service, format: :json)
end
