class Api::Question < ApplicationRecord
  has_many :answers
end
