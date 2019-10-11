class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :task_id
      t.integer :client_id
      t.float :payment_received
      t.string :phone
      t.string :region
      t.string :category
      t.integer :status # 1 - Отправлено; 2 - Не отправлено
      t.string :sim_card_id, null: true
      t.timestamps
    end
  end
end
