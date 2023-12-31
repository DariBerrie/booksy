class User < ApplicationRecord
  has_one_attached :avatar

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
end
