class DogsController < ApplicationController
    def new
      @dog = Dog.new
    end

    def show
      @dog = Dog.find(params[:id])
    end

    def create
      @dog = Dog.create(dog_params)

      if @dog.valid?
        redirect_to dog_path(@dog.id)
      else
        render :new
      end
    end

    def index
      @dogs = Dog.all
    end

    def edit
      @dog = Dog.find(params[:id])
    end

    def update
      @dog = Dog.find(params[:id])
      @dog.update(dog_params)
      
      if @dog.valid?
        redirect_to dog_path(@dog.id)
      else
        render :edit
      end
    end

    private

    def dog_params
      params.require(:dog).permit(:name, :age, :breed)
    end

end