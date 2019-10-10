require 'date'

class BountiesController < ApplicationController

    def fetch
        # binding.pry

        userId = params[:userId]

        user = User.find_by(id: userId)

        render json: {content: user.bounties}
    end

    def create
        # binding.pry
        userId = params[:search][:userId]

        link = params[:search][:link]
        title = params[:search][:title]
        tags = params[:search][:tags]
        bounty_amount = params[:search][:bounty_amount]
        bounty_closes_date = params[:search][:bounty_closes_date]

        # configure epoch integer to be datetime 

        # bounty_closes_date = Time.at(bounty_closes_date)

        user = User.find_by(id: userId)

        if Bounty.find_duplicates(user, title).empty?
            bounty = user.bounties.build(
                title: title,
                link: link,
                tags: tags,
                bounty_amount: bounty_amount,
                bounty_closes_date: bounty_closes_date
            )
            bounty.save

            render json: BountySerializer.new(bounty)
        else
            render json: {errors: "Error: You've already marked this bounty!", status: 400}
        end
    end

    def destroy

        bountyId = params[:bountyId]

        bounty = Bounty.find_by(id: bountyId)
        bounty.delete

        render json: {message: "Bounty removed.", status: 200}


    end

end