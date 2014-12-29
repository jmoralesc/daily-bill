class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.integer :amount
      t.date :given_at
      t.integer :client_id

      t.timestamps
    end
  end
end
