class Client < ActiveRecord::Base
  has_many :orders
  has_many :service_logs, through: :orders
end
