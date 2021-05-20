class DogsController < ApplicationController
    def index 
        @dogs = Dog.all
    end

    def show 
        @dog = Dog.find(params[:id])
    end

    def reorder 
        @dogs = Dog.all 
        @dogs.sort_by{|dog| dog.employees.length}
        render :index
    end
end
