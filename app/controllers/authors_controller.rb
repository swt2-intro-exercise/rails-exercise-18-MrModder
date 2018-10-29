class AuthorsController < ApplicationController
    def new
    end

    def create
        puts params
        puts author_params
        @author = Author.new(author_params)

        puts @author.first_name
        puts @author.last_name
        puts @author.homepage

        @author.save
    end

    def author_params
        params.require(:author).permit(:first_name, :last_name, :homepage)
    end
end
