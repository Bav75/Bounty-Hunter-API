class CreateBounties < ActiveRecord::Migration[5.2]
  def change
    create_table :bounties do |t|
      t.string :tags, array: true
      t.integer :bounty_amount
      t.string :title
      t.string :link 
      t.decimal :bounty_closes_date
      t.belongs_to :user

      t.timestamps
    end
  end
end
