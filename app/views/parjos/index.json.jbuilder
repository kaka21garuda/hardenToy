json.array!(@parjos) do |parjo|
  json.extract! parjo, :id, :name, :email
  json.url parjo_url(parjo, format: :json)
end
