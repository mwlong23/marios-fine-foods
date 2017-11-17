class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.column :username, :string
      t.column :rating, :string
      t.column :review, :string
    end
  end
end
