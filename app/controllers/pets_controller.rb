class PetsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @pets = Pet.all
  end
end
