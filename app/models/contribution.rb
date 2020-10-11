class Contribution < ApplicationRecord
  belongs_to :issue
  has_many :contribution_contents
  has_many :contribution_infos
end
