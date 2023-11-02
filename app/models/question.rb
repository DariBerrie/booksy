class Question < ApplicationRecord
  belongs_to :book
  belongs_to :quiz
end
