json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :user_id, :bar_id, :amount, :type
  json.url transaction_url(transaction, format: :json)
end
