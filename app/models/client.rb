class Client < ActiveRecord::Base
  has_many :bills
  has_many :instalments
  validates :name, presence: true
end