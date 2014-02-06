class Bar < ActiveRecord::Base
	has_many :check_ins
	has_many :transactions
end
