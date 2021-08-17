require 'digest'

class User < ApplicationRecord
#   attr_accessor :password_confirmation  #model根本沒這欄位，騙他的

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, comfirmation: true
  validates :account, presence: true, uniqueness: true

  #密碼儲存前加密
  before_create :encrypt_password
  private
  def encrypt_password(pw)
    #salting -> x123y
    salted_pw = "xyz#{self.password}34568#{self.password}tyu56789g"
    self.password = Digest::SHA1.hexdigest(salted_pw)  
  end
end
