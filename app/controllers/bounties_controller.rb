class BountiesController < ApplicationController

    def create
      binding.pry
      id = params[:search][:userId]
    end

end