class CreateTablesWithTimestamps < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.column :name, :string
      t.column :description, :string
      t.column :country_of_origin, :string
      t.column :price, :float
      t.timestamps()
    end
    create_table :reviews do |t|
      t.column :username, :string
      t.column :rating, :string
      t.column :review, :string
      t.timestamps()
    end
  end
end
