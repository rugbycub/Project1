json.array!(@payments) do |payment|
  json.extract! payment, :id, :payment_aci, :card_last_four, :card_type, :user_id
  json.url payment_url(payment, format: :json)
end
