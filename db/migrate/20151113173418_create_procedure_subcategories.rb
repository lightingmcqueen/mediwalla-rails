class CreateProcedureSubcategories < ActiveRecord::Migration
  def change
    create_table :procedure_subcategories do |t|
      t.integer :procedure_category_id
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
