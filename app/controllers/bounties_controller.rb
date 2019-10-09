class BountiesController < ApplicationController

    def create
    #   binding.pry
      userId = params[:search][:userId]

      link = params[:search][:link]
      tags = params[:search][:tags]
      bounty_amount = params[:search][:bounty_amount]
      bounty_closes_date = params[:search][:bounty_closes_date]

      user = User.find_by(id: userId)

      
    end

end