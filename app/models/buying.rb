class Buying < ApplicationRecord
  validates :name,
    presence: true
  validates :price,
    presence: true
  validates :date,
    presence: true
end
