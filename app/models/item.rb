class Item < ActiveRecord::Base
  belongs_to :list
  validates :name, length: { minimum: 1, maximum: 20 }, presence: true
end
