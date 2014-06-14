class Order < ActiveRecord::Base
  has_many :service_logs, dependent: :destroy

  belongs_to :client
  belongs_to :product
  belongs_to :creator, class_name: 'User'
  belongs_to :current_service_log, class_name :'ServiceLog'

  state_machine :state, :initial => :pending do
    # TODO: complete the whole state machine here,
    # see https://github.com/pluginaweek/state_machine#example
  end
end
