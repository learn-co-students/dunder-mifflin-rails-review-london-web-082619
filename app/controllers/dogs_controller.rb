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

    def create
        @dog = Dog.create(dog_params)
        if @dog.valid?
            redirect_to dog_path(@dog)
        else
            render :new
        end
    end

    def edit
        @dog = Dog.find(params[:id])
    end

    def update
        @dog = Dog.find(params[:id])
        @dog.update(dog_params)
        if @dog.valid?
            redirect_to dog_path(@dog)
        else
            render :edit
        end
    end

    def sort
        @dogs = Dog.all
        @sorted_@dogs = @dogs.sort_by {|dog| dog.employees.length }
        # byebug
    end
     

    def destroy
        @dog = Dog.find(params[:id])
        @dog.destroy
    end
    

    private

    def dog_params
        params.require(:dog).permit!
    end

end
