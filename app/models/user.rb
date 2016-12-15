class User < ApplicationRecord
  
#  require 'digest/sha1'
  
  attr_accessor :password
  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
 # validates :username, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
#  validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
  validates :password,:presence => true
#  validates_length_of :password, :in => 6..20, :on => :create

#  has_secure_password

  def authenticate?(email, password)
    user = User.find_by_email email
    return nil  if user.nil?
    return user if user.has_password?(password)
  end
  
#  attr_accessible :email, :password
  
=begin
  before_save :encrypt_password
  after_save :clear_password
  
  def encrypt_password
    if password.present?
      self.salt = random_string(8) if self.salt == nil
      self.hashed_password = Digest::SHA1.hexdigest(self.salt + self.password) unless self.password.nil?
    end
  end
  
  def clear_password
    self.password = nil
  end
=end
  
end
