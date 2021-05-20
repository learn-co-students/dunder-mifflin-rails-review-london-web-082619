class DogsController < ApplicationController

    def index
        @dogs = Dog.all
    end

    def new
        @dog = Dog.new
    end

    def show
        @dog = Dog.find(params[:id])
    end

    def edit
        @dog = Dog.find(params[:id])
    end

    def create
        @dog = Dog.new(dog_params)
        @dog.save
        redirect_to dog_path(@dog)
    end

    def update
        @dog = Dog.find(params[:id])
        @dog.update(dog_params)
        redirect_to dog_path(@dog)
    end

    def destroy
        Dog.destroy(params[:id])
        redirect_to dog_path
    end

    private

    def dog_params
        params.require(:dogs).permit!
    end
end
