class ExpendituresController < ApplicationController
  def new
    @expenditure = Expenditure.new
  end

  def create
    @categories = params[:expenditure][:category_id].drop(1)
    @categories.each do |category|
      @expenditure = Expenditure.new(name: params[:expenditure][:name], amount: params[:expenditure][:amount],
                                     category_id: category.to_i, user_id: current_user.id)
      if @expenditure.save
        flash[:notice] = 'Expenditure created successfully'
        redirect_to category_path(category.to_i)
      else
        flash[:alert] = 'Expenditure not created'
        render :new
      end
    end
    
  end

  private

  def expenditure_params
    params.require(:expenditure).permit(:name, :amount, :category_id)
  end
end
