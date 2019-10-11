class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :company
      t.string :contact_name
      t.string :phone
      t.timestamps
    end
  end
end
