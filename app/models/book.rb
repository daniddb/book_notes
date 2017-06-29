class Book < ApplicationRecord
  belongs_to :reviewer, required: false
  has_many :notes, dependent: :destroy
end
