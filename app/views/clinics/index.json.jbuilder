json.array!(@clinics) do |clinic|
  json.extract! clinic, :id, :clinic_admin_id, :name, :description, :services, :address_line_1, :address_line_2, :city, :country_id, :zipcode_string, :coordinator, :ratings
  json.url clinic_url(clinic, format: :json)
end
