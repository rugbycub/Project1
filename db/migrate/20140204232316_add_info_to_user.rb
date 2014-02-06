class AddInfoToUser < ActiveRecord::Migration
  def change

    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :integer
    add_column :users, :member_number, :integer

  end
end
