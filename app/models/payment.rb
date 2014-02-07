class Payment < ActiveRecord::Base
	attr_accessor :credit_card_number, :name_on_card, :expiration_month, :expiration_year, :card_security_code, :card_billing_zip
	belongs_to :user
before_save :tokenize_balanced_card
before_save :add_payment

	def payment_params
    params.require(:payment).permit(:payment_aci, :card_last_four, :card_type, :user_id, :credit_card_number, :name_on_card, :expiration_month, :expiration_year, :card_security_code, :card_billing_zip)
  end

  

  
end
