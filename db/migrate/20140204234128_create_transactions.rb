class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :user_id
      t.integer :bar_id
      t.float :amount
      t.string :type

      t.timestamps
    end
  end
end
