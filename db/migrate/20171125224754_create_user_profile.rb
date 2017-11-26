class CreateUserProfile < ActiveRecord::Migration[5.1]
  def change
    create_table :user_profiles do |t|
      t.column :first_name, :string
      t.column :last_name, :string
      t.column :profile_image, :string
      t.column :user_id, :integer
      t.timestamps()
    end
  end
end
