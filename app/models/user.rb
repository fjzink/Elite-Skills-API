class User < ApplicationRecord
  has_secure_password

  has_many :groups
  has_many :skills, through: :groups
end
