class Contribution < ApplicationRecord
  belongs_to :issue
  has_one_attached :photo
  validates :con_type, presence: true
  validates :content, presence: true
  validates :name, presence: true
  validates :email, presence: true

end
