class Post < ApplicationRecord
  belongs_to :user
  has_many :marks

  validates :title, :description, presence: true
end
