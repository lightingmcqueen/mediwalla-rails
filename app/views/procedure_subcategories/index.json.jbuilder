json.array!(@procedure_subcategories) do |procedure_subcategory|
  json.extract! procedure_subcategory, :id, :procedure_category_id, :name, :description
  json.url procedure_subcategory_url(procedure_subcategory, format: :json)
end
