json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :contact_person, :contact_phone, :location
  json.url customer_url(customer, format: :json)
end
