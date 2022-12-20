class ExpendituresController < ApplicationController
  def new
    @expenditure = Expenditure.new
  end

  def create
    @categories = params[:expenditure][:category_id].drop(1)
    @categories.each do |category|
      @expenditure = Expenditure.new(name: params[:expenditure][:name], amount: params[:expenditure][:amount],
                category_id: category.to_i, user_id: current_user.id)
      @expenditure.save 
    end
    redirect_to expenditures_path
  end

  private

  def expenditure_params
    params.require(:expenditure).permit(:name, :amount, :category_id)
  end
  
end
