class CreateCheckIns < ActiveRecord::Migration
  def change
    create_table :check_ins do |t|
      t.integer :user_id
      t.integer :bar_id

      t.timestamps
    end
  end
end
