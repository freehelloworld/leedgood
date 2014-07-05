json.array!(@homelands) do |homeland|
  json.extract! homeland, :id, :name, :packagedes, :frontimg, :structimg, :lot, :address, :size, :bedroom, :bathroom, :garage, :price, :status, :note1, :note2, :note3
  json.url homeland_url(homeland, format: :json)
end
