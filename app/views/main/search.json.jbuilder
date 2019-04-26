json.fields do
  json.array!(@fields) do |resort|
    json.name resort.name
    json.url resort_path(resort)
  end
end

json.regions do
  json.array!(@region) do |resort|
    json.name resort.name
    json.url resort_path(resort)
  end
end
