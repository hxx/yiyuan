class Order < ActiveRecord::Base
  has_many :service_logs, dependent: :destroy

  belongs_to :client
  belongs_to :product
  belongs_to :current_service_log, class_name: 'ServiceLog'
  belongs_to :creator, polymorphic: true

  before_create :setup_product_snapshot

  state_machine :state, :initial => :pending do
    # TODO: complete the whole state machine here,
    # see https://github.com/pluginaweek/state_machine#example
  end

  private
  def setup_product_snapshot
    self.product_name = product.name rescue nil
    self.product_description = product.description rescue nil
    self.product_price = product.price rescue nil
  end
end
