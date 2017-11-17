class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.column :name, :string
      t.column :description, :string
      t.column :country_of_origin, :string
      t.column :price, :float
    end
  end
end
