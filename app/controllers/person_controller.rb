class PersonController < ApplicationController
    def index
    
    end

    def new
        @person =Person.new
        @person.addresses.build
    end

    def  create
      @person = Person.new(person_params)
       if @person.save
        redirect_to root_path
       end
    end

    private
    def person_params
    params.require(:person).permit(:name,addresses_attributes:[:city,:street])
    end    
end

