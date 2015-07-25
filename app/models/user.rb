class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable, 
  :recoverable, :rememberable, :trackable, :validatable

  validates :email, :email => {:strict_mode => true}


  has_many :posts
  has_many :comments
end
