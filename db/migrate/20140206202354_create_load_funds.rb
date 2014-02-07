class CreateLoadFunds < ActiveRecord::Migration
  def change
    create_table :load_funds do |t|

      t.timestamps
    end
  end
end
