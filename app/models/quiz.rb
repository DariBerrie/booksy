class Quiz < ApplicationRecord
  belongs_to :user
  belongs_to :book
  has_many :questions
  has_many :user_responses, through: :questions

  accepts_nested_attributes_for :questions
end
