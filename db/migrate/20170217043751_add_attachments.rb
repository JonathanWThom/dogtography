class AddAttachments < ActiveRecord::Migration[5.0]
  def change
    add_attachment :packages, :image
  end
end
