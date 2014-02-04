json.array!(@bars) do |bar|
  json.extract! bar, :id, :name, :address, :city, :state, :zip, :lat, :long
  json.url bar_url(bar, format: :json)
end
