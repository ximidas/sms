class AddNameToNumbers < ActiveRecord::Migration[6.0]
  def change
    add_column :numbers, :name, :string, null: true
  end
end
