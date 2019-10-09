class Bounty < ApplicationRecord
    belongs_to :user


    # finds existing bounties for a given user and bounty
    def self.find_duplicates(user, title)
        self.where(user: user, title: title)
    end

end
