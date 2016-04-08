class AddTextNumberToUsers < ActiveRecord::Migration
  def change
    add_column :users, :text_number, :string
  end
end
