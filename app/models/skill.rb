class Skill < ApplicationRecord
  belongs_to :group
  has_many :metrics
end
