class Tag < ApplicationRecord
  validates :name, presence: true, length: { maximum: 32 }

  has_and_belongs_to_many :documents
end
