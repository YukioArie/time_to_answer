class Subject < ApplicationRecord
  paginates_per 5
  has_many :questions
end
