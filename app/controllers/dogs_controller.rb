class DogsController < ApplicationController
  def index
    if params[:sort] == "employee-count"
      @dogs = Dog.all.sort do |dog_a, dog_b|
        dog_b.employees.length <=> dog_a.employees.length
      end
    else
      @dogs = Dog.all
    end
  end

  def show
    @dog = Dog.find(params[:id])
    @employees = @dog.employees
  end
end