class List < ActiveRecord::Base
  belongs_to :user
  has_many :items, dependent: :destroy

  validates :name, length: { minimum: 1, maximum: 50 }, presence: true
end
