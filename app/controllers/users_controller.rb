class UsersController < Devise::RegistrationsController
	def create
		super
		resource.accounts.create(:user_id => user_id, :balance => 0)
end
