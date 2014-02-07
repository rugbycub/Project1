module PaymentsHelper
def add_payment
	card_number = params[:payment][:credit_card_number] 
	expiration_month = params[:payment][:expiration_month] 
	expiration_year = params[:payment][:expiration_year]
	security_code = params[:payment][:card_security_code]
	postal_code = params[:payment][:billing_zip_code]
    @card = Balanced::Card.new(card_number: card_number, expiration_month: expiration_month, expiration_year: expiration_year, security_code: security_code)
    @card.save
    uri = current_user.customer_uri
    customer = Balanced::Customer.find(uri)
    response = customer.add_card(@card.uri)
  end

end
