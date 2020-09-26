class Issue < ApplicationRecord
  has_one_attached :photo
  has_many :contributions
end
