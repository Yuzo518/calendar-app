class PlansController < ApplicationController
  def index
    @plans = Plan.all
    @plan = Plan.new
  end

  def new
    @plan = Plan.new
    @plans = Plan.all
  end

  def create
    #binding.pry
    @plan = Plan.new(plan_params)
    #binding.pry
    if @plan.save
      #binding.pry
      redirect_to root_path
    else
      #binding.pry
      @plans = Plan.all
      render :index
    end
  end

  def show
    @plan = Plan.find(params[:id])
  end

  def edit
    @plan = Plan.find(params[:id])
    @plans = Plan.all
  end

  def update
    binding.pry
    @plan = Plan.find(params[:id])
    binding.pry
    if @plan.update(edit_plan_params)
      binding.pry
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @plan = Plan.find(params[:id])
    binding.pry
    if @plan.destroy
      redirect_to root_path
    else
      redirect_to :show
    end
  end

  private

  def plan_params
    params.permit( :title, :start_time, :ending_time, :date_pattern, :comment, user_ids: []).merge(master_id: current_user.id)
  end

  def edit_plan_params
    params.require(:plan).permit( :title, :start_time, :ending_time, :date_pattern, :comment, user_ids: []).merge(master_id: current_user.id)
  end
end
