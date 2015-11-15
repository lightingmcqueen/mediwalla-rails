class ProcedureSubcategory < ActiveRecord::Base
	 belongs_to :procedure_category, :class_name => "Category",  :foreign_key => "procedure_subcategory_id", :dependent => :destroy
end
