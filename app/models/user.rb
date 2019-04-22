class User < ApplicationRecord
  has_secure_password
  has_many :messages
  # Validations -- see the Rails Guide
  validates :email, :presence => true, :uniqueness => true
end
