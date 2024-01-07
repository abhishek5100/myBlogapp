class Blog < ApplicationRecord
  belongs_to :author
  has_many :comments, dependent: :destroy
  has_one_attached :avatar
end
