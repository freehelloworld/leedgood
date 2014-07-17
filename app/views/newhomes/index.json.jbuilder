json.array!(@newhomes) do |newhome|
  json.extract! newhome, :id, :name, :homedes, :frontimg, :structimg, :lot, :address, :size, :bedroom, :bathroom, :garage, :price, :status, :project_id, :note1, :note2, :note3
  json.url newhome_url(newhome, format: :json)
end
