class Instalment < ActiveRecord::Base
  belongs_to :bill
  belongs_to :client
end