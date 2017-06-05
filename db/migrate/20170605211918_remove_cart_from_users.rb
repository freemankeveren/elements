class RemoveCartFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :cart, :string
  end
end
