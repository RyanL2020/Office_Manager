class ChangeColumnUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :firs_name, :first_name 
  end
end
