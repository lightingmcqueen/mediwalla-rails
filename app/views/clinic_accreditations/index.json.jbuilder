json.array!(@clinic_accreditations) do |clinic_accreditation|
  json.extract! clinic_accreditation, :id, :clinic_id, :accreditation_id
  json.url clinic_accreditation_url(clinic_accreditation, format: :json)
end
