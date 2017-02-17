class AddTables < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.column :package_id, :integer
      t.column :user_id, :integer
      t.column :content, :string

      t.timestamps
    end

    create_table :packages do |t|
      t.column :name, :string
      t.column :description, :string
      t.column :price, :decimal

      t.timestamps
    end
  end
end
