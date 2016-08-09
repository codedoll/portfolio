class WelcomeController < ApplicationController
  # def index
  # end

    def index
	    @articles = Article.all
  	end

end
