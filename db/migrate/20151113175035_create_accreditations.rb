class CreateAccreditations < ActiveRecord::Migration
  def change
    create_table :accreditations do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
