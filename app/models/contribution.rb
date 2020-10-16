class Contribution < ApplicationRecord
  belongs_to :issue
  has_one_attached :photo

end
