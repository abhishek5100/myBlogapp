class Blog < ApplicationRecord
  belongs_to :author
  has_many :comments
  has_one_attached :avatar
end
