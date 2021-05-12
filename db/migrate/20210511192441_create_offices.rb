class CreateOffices < ActiveRecord::Migration[6.1]
  def change
    create_table :offices do |t|
      t.string :company_name
      t.string :location
      t.string :owner

      t.timestamps
    end
  end
end
