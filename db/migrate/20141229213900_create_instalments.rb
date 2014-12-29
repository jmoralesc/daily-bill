class CreateInstalments < ActiveRecord::Migration
  def change
    create_table :instalments do |t|
      t.integer :amount
      t.date :date
      t.integer :bill_id

      t.timestamps
    end
  end
end
