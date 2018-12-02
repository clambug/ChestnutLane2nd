class AddUserToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :user, :integer, foreign_key: false
  end
end
