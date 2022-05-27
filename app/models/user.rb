class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates_format_of :email, with: URI::MailTo::EMAIL_REGEXP


  has_many :documents
end
