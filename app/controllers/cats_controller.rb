class CatsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @cats = Cat.all.order('created_at DESC') 
  end

  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.new(cat_params)
    if @cat.save
      redirect_to cats_path, method: :get
    else
      render :new
    end
  end

  def show
  end

  def edit
    unless @cat.user_id == current_user.id
      redirect_to root_path
    end
  end

  def update
    if @cat.update(cat_params)
      redirect_to cats_path, method: :get
    else
      render :edit
    end
  end

  def destroy
    @cat.destroy
    redirect_to cats_path, method: :get
  end

  private

  def cat_params
    params.require(:cat).permit(:image, :pet_name, :kind, :personality_id, :age_id, :sex_id, :weight).merge(user_id: current_user.id)
  end

  def set_item
    @cat = Cat.find(params[:id])
  end
end