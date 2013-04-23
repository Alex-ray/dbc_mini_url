class User < ActiveRecord::Base
  has_many :urls
  attr_accessible :name, :password, :password_confirmation

  validates :name, :presence => true, :uniqueness => true, :length => {:maximum => 100}
  has_secure_password
end
