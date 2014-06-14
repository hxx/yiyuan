class OperatorProfile < ActiveRecord::Base
  include ProfileConcern

  belongs_to :operator
end
