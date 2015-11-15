json.array!(@clinic_staffs) do |clinic_staff|
  json.extract! clinic_staff, :id, :clinic_id, :name, :description, :speciality
  json.url clinic_staff_url(clinic_staff, format: :json)
end
