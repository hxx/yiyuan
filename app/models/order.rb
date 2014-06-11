class Order < ActiveRecord::Base
  has_many :service_logs, dependent: :destroy

  belongs_to :client
  belongs_to :product
end
