class CreateSimCardFunds < ActiveRecord::Migration[6.0]
  def change
    create_table :sim_card_funds do |t|
      t.integer :sim_card_id
      t.float :summ
      t.timestamps
    end
  end
end
