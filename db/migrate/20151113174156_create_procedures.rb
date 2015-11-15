class CreateProcedures < ActiveRecord::Migration
  def change
    create_table :procedures do |t|
      t.integer :clinic_id
      t.integer :procedure_category_id
      t.integer :procedure_subcategory_id
      t.string :name
      t.string :overview
      t.string :procedure_before
      t.string :procedure_after
      t.string :price
      t.string :hospital_time
      t.string :abroad_time

      t.timestamps null: false
    end
  end
end
