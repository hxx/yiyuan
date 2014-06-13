class Order < ActiveRecord::Base
  has_many :service_logs, dependent: :destroy

  belongs_to :client
  belongs_to :product
  belongs_to :creator, class: 'User'

  state_machine :state, :initial => :pending do
    # TODO: complete the whole state machine here,
    # see https://github.com/pluginaweek/state_machine#example
  end
end
