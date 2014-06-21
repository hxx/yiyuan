class AbilityTagsController < InheritedBaseController
  private
  def permitted_params
    params.permit(ability_tag: [:name])
  end
end
