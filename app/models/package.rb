class Package < ActiveRecord::Base
  validates :name, :description, :price, :presence => true
  has_many :reviews
  has_many :users, through: :reviews
end
