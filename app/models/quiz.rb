class Quiz < ApplicationRecord
  belongs_to :user
  has_many :questions
  has_one :book, through: :questions

  accepts_nested_attributes_for :questions
end
