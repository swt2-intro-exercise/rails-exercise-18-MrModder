class AuthorsController < ApplicationController
    def new
    end

    def create
        @author = Author.new(
            first_name: params[:first_name], 
            last_name: params[:last_name], 
            homepage: params[:homepage])

        @author.save
    end
end
