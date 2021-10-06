class Question < ApplicationRecord
  belongs_to :subject
  has_many :anwers
  accepts_nested_attributes_for :answers, allow_destroy: true
  paginates_per 5
end
