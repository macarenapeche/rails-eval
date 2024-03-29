class Document < ApplicationRecord
  validates :name, presence: true, length: { maximum: 256}
  validates :content, presence: true
  
  belongs_to :user
  has_and_belongs_to_many :tags
end
