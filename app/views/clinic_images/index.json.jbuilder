json.array!(@clinic_images) do |clinic_image|
  json.extract! clinic_image, :id
  json.url clinic_image_url(clinic_image, format: :json)
end
