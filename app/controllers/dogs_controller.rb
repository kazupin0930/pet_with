class DogsController < ApplicationController

  
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
      @dog = Dog.find(params[:id])
  end

  def edit
    @dog = Dog.find(params[:id])
    unless @dog.user_id == current_user.id
      redirect_to root_path
    end
  end

  def update
    @dog = Dog.find(params[:id])
    if @dog.update(dog_params)
      redirect_to dogs_path, method: :get
    else
      render :edit
    end
  end



  private

  def dog_params
    params.require(:dog).permit(:image, :pet_name, :kind, :personality_id, :age_id, :sex_id, :weight).merge(user_id: current_user.id)
  end
end
