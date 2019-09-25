class Dog < ApplicationRecord
    has_many :employees

    def reorder
      @dogs = Dog.all.sort_by{ |dog| dog.employees.length }
    end

end