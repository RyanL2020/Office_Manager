class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :office, null: false, foreign_key: true

      t.timestamps
    end
  end
end
