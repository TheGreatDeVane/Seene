class AddUserIdToUpdates < ActiveRecord::Migration
  def change
    add_reference :updates, :user, index: true, foreign_key: true
  end
end
