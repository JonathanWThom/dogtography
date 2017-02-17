class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :package
  validates :content, :presence => true
end
