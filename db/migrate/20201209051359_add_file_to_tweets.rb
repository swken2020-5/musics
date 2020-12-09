class AddFileToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :file, :string
  end
end
