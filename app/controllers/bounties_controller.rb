class BountiesController < ApplicationController

    def create
        binding.pry
        userId = params[:search][:userId]

        link = params[:search][:link]
        title = params[:search][:title]
        tags = params[:search][:tags]
        bounty_amount = params[:search][:bounty_amount]
        bounty_closes_date = params[:search][:bounty_closes_date]

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

        else
            render :json 

        end

end