class ChangePhoneNumberTypeToInteger < ActiveRecord::Migration
  def change
  	change_column :users, :member_number, :string
  	change_column :users, :phone_number, :string
  end
end
