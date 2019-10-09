class Bounty < ApplicationRecord
    belongs_to :user


    # finds existing bounties for a given user and bounty
    def self.find_duplicates(title, user)
        self.where(user: user, title: title)
    end

end
