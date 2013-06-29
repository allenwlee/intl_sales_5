class User < ActiveRecord::Base

  attr_accessible :username, :password, :password_confirmation, :email, :category
  has_many :projects
  has_secure_password
  validates :username, :email, :presence => true
  validates :password, :presence => true, :on => :create
  validates :username, :email, :uniqueness => true
  validates :email, :format => { :with => /.*[@].*[\.].*/}
  validates :password, :length => { :in => 6..20 }, :on => :create

end
