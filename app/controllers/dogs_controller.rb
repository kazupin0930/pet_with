class DogsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  
  def index
    @dogs = Dog.all.order('created_at DESC') 
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    if @dog.save
      redirect_to dogs_path, method: :get
    else
      render :new
    end
  end

  def show
  end

  def edit
    unless @dog.user_id == current_user.id
      redirect_to root_path
    end
  end

  def update
    if @dog.update(dog_params)
      redirect_to dogs_path, method: :get
    else
      render :edit
    end
  end

  def destroy
    @dog.destroy
    redirect_to dogs_path, method: :get
  end

  private

  def dog_params
    params.require(:dog).permit(:image, :pet_name, :kind, :personality_id, :age_id, :sex_id, :weight).merge(user_id: current_user.id)
  end

  def set_item
    @dog = Dog.find(params[:id])
  end
end
