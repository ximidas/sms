class CreateSimCards < ActiveRecord::Migration[6.0]
  def change
    create_table :sim_cards do |t|
      t.string :number
      t.integer :sms_available
      t.float :price
      t.string :operator
      t.timestamps
    end
  end
end
