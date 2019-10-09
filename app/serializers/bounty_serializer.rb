class BountySerializer
    include FastJsonapi::ObjectSerializer
    attributes :title, :link, :bounty_amount, :id, :bounty_closes_date, :tags
end