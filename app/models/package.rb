class Package < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>"}, default_url: "images/placeholder.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :name, :description, :price, :presence => true
  has_many :reviews
  has_many :users, through: :reviews
end
