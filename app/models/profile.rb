class Profile < ApplicationRecord
  belongs_to :user
  has_one_attached :dp
  validates_uniqueness_of :user
end
