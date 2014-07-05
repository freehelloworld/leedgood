json.array!(@projecttypes) do |projecttype|
  json.extract! projecttype, :id, :name, :description, :image, :note1, :note2
  json.url projecttype_url(projecttype, format: :json)
end
