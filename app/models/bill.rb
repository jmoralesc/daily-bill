class Bill < ActiveRecord::Base
  belongs_to :client
  has_many :instalments
end