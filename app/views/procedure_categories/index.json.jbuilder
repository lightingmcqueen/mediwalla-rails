json.array!(@procedure_categories) do |procedure_category|
  json.extract! procedure_category, :id, :name, :description
  json.url procedure_category_url(procedure_category, format: :json)
end
