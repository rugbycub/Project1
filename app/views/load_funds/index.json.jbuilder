json.array!(@load_funds) do |load_fund|
  json.extract! load_fund, :id
  json.url load_fund_url(load_fund, format: :json)
end
