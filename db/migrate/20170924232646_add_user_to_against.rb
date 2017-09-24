class AddUserToAgainst < ActiveRecord::Migration[5.0]
  def change
    add_reference :againsts, :user, foreign_key: true
  end
end
