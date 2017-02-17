class RemoveContent < ActiveRecord::Migration[5.0]
  def change
    remove_column :reviews, :content
  end
end
