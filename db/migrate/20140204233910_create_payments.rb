class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :payment_aci
      t.integer :card_last_four
      t.string :card_type
      t.integer :user_id

      t.timestamps
    end
  end
end
