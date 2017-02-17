class AddIndex < ActiveRecord::Migration[5.0]
  def change
    drop_table :reviews
    create_table :reviews do |t|
      t.belongs_to :user, index: true
      t.belongs_to :package, index: true
      t.column :content, :string
      t.timestamps
    end
  end
end
