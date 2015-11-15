class ProcedureCategory < ActiveRecord::Base
	 has_many :procedure_subcategory
end
