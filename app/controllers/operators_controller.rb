class OperatorsController < InheritedBaseController
  def new
    @operator = Operator.new
    @credential = @operator.build_credential
  end

  def edit
    @operator = Operator.find params[:id]
    @credential = @operator.credential || @operator.build_credential
  end

  private
  # permitted_params works for inherited_resources,
  # more details, visit: https://github.com/josevalim/inherited_resources#strong-parameters
  def permitted_params
    params.permit(operator: [:name, {credential_attributes: [:email, :password, :password_confirmation]}])
  end
end
