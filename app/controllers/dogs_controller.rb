class DogsController < ApplicationController
    
    def index
        @dogs = Dog.all
    end

    def show
        @dog = Dog.find(params[:id])
        @employees = @dog.employees
    end

    def reorder
        @dogs = Dog.all.sort_by{|dog| dog.employees.length}
        render :index
    end
    
end
