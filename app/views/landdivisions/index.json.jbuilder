json.array!(@landdivisions) do |landdivision|
  json.extract! landdivision, :id, :lot, :address, :size, :frontage, :price, :status, :project_id
  json.url landdivision_url(landdivision, format: :json)
end
