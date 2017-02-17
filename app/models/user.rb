class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :reviews
  has_many :packages, through: :reviews

  after_create :send_welcome_message

  def send_welcome_message
    ContactMailer.welcome_email(self).deliver_now
  end
end
