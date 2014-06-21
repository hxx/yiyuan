# InheritedBaseController manage uniform inherited actions, controllers need to
# possess inherited abilities are suggested to be inheritd from this controller
class InheritedBaseController < ApplicationController
  inherit_resources

  def create
    create! do |success, failure|
      success.html { redirect_to collection_path }
    end
  end

  def update
    update! do |success, failure|
      success.html { redirect_to collection_path }
    end
  end
end
