class FoodsController < ApplicationController
  def index
    @current_user = current_user
    @foods = Food.where(user: current_user)
  end

  def new
    @current_user = current_user
    food = Food.new
    render :new, locals: { food: }
  end

  def create
    food = Food.new(params.require(:food).permit(:name, :measurement_unit, :price))
    food.user_id = current_user.id

    if food.save
      flash[:success] = 'Food created successfully'
      redirect_to '/foods'
    else
      flash.now[:error] = 'Error: Food could not be saved'
      render :new, locals: { food: }, status: 422
    end
  end

  def destroy
    food = Food.find(params[:food_id])
    food.destroy
    redirect_to(request.referer)
  rescue StandardError
    flash[:message] = 'Cannot delete, it belongs to a recipe.'
    redirect_to(request.referer)
  end
end
