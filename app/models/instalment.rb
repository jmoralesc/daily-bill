class Instalment < ActiveRecord::Base
  belongs_to :bill
  belongs_to :client
  validates :amount, :client_id, :bill_id, presence: true
end