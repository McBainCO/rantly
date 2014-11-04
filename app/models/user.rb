class User < ActiveRecord::Base
  has_secure_password
  has_many :rants

  validates_presence_of :name, :email
  validates_uniqueness_of :email


end