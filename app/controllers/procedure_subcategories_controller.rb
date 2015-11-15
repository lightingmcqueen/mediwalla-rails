class ProcedureSubcategoriesController < ApplicationController
  before_action :set_procedure_subcategory, only: [:show, :edit, :update, :destroy]

  # GET /procedure_subcategories
  # GET /procedure_subcategories.json
  def index
    @procedure_subcategories = ProcedureSubcategory.all
  end

  # GET /procedure_subcategories/1
  # GET /procedure_subcategories/1.json
  def show
  end

  # GET /procedure_subcategories/new
  def new
    @procedure_subcategory = ProcedureSubcategory.new
  end

  # GET /procedure_subcategories/1/edit
  def edit
  end

  # POST /procedure_subcategories
  # POST /procedure_subcategories.json
  def create
    @procedure_subcategory = ProcedureSubcategory.new(procedure_subcategory_params)

    respond_to do |format|
      if @procedure_subcategory.save
        format.html { redirect_to @procedure_subcategory, notice: 'Procedure subcategory was successfully created.' }
        format.json { render :show, status: :created, location: @procedure_subcategory }
      else
        format.html { render :new }
        format.json { render json: @procedure_subcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /procedure_subcategories/1
  # PATCH/PUT /procedure_subcategories/1.json
  def update
    respond_to do |format|
      if @procedure_subcategory.update(procedure_subcategory_params)
        format.html { redirect_to @procedure_subcategory, notice: 'Procedure subcategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @procedure_subcategory }
      else
        format.html { render :edit }
        format.json { render json: @procedure_subcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /procedure_subcategories/1
  # DELETE /procedure_subcategories/1.json
  def destroy
    @procedure_subcategory.destroy
    respond_to do |format|
      format.html { redirect_to procedure_subcategories_url, notice: 'Procedure subcategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_procedure_subcategory
      @procedure_subcategory = ProcedureSubcategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def procedure_subcategory_params
      params.require(:procedure_subcategory).permit(:procedure_category_id, :name, :description)
    end
end
