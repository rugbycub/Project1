class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :account
  has_many :check_ins
  has_many :payments
  has_many :transactions


  after_create :balanced_customer
  after_create :create_user_account
  before_destroy { |record| Account.destroy_all "user_id = #{record.id}"   }
  before_destroy :delete_balanced_customer

  	def create_user_account
  		@user_id = self.id
  		@user = User.find(@user_id)
  		Account.create(user_id: @user.id, balance: 0)
  	end

  def balanced_customer
  	#Balanced.configure('ak-test-1Pqu0OKm2l0uhGmQlMxCYSzrfp9P9ZRs')
		full_name = self.first_name + " " + self.last_name
    customer = Balanced::Customer.new(name: full_name, email: self.email, phone: self.phone_number).save
    self.customer_uri = customer.uri
    self.save
    customer
  end

  def delete_balanced_customer
  	#Balanced.configure('ak-test-1Pqu0OKm2l0uhGmQlMxCYSzrfp9P9ZRs')
  	uri = self.customer_uri
  	customer = Balanced::Customer.find(uri)
  	customer.unstore
  end

  private

end
