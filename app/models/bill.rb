class Bill < ActiveRecord::Base
  belongs_to :client
  has_many :instalments
  validates :client_id, :amount, :given_at, presence: true
end