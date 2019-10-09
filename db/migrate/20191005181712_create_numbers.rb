class CreateNumbers < ActiveRecord::Migration[6.0]
  def change
    create_table :numbers do |t|
      t.string :phone
      t.string :category
      t.string :region
      t.string :country
      t.string :site
      t.timestamps
    end
  end
end
