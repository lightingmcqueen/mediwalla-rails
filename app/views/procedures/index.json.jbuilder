json.array!(@procedures) do |procedure|
  json.extract! procedure, :id, :clinic_id, :procedure_category_id, :procedure_subcategory_id, :name, :overview, :procedure_before, :procedure_after, :price, :hospital_time, :abroad_time
  json.url procedure_url(procedure, format: :json)
end
