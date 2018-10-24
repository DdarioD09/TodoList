class User < ApplicationRecord
  belongs_to :role

  has_many :logs
  has_many :users_lists
  has_many :lists, through: :users_lists
  has_many :tasks, through: :logs
  has_secure_password
end
