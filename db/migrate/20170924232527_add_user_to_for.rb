class AddUserToFor < ActiveRecord::Migration[5.0]
  def change
    add_reference :fors, :user, foreign_key: true
  end
end
