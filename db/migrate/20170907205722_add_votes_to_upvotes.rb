class AddVotesToUpvotes < ActiveRecord::Migration[5.0]
  def change
    add_column :upvotes, :votes, :integer
  end
end
