class ClinicStaffsController < ApplicationController
  before_action :set_clinic_staff, only: [:show, :edit, :update, :destroy]

  # GET /clinic_staffs
  # GET /clinic_staffs.json
  def index
    @clinic_staffs = ClinicStaff.all
  end

  # GET /clinic_staffs/1
  # GET /clinic_staffs/1.json
  def show
  end

  # GET /clinic_staffs/new
  def new
    @clinic_staff = ClinicStaff.new
  end

  # GET /clinic_staffs/1/edit
  def edit
  end

  # POST /clinic_staffs
  # POST /clinic_staffs.json
  def create
    @clinic_staff = ClinicStaff.new(clinic_staff_params)

    respond_to do |format|
      if @clinic_staff.save
        format.html { redirect_to @clinic_staff, notice: 'Clinic staff was successfully created.' }
        format.json { render :show, status: :created, location: @clinic_staff }
      else
        format.html { render :new }
        format.json { render json: @clinic_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clinic_staffs/1
  # PATCH/PUT /clinic_staffs/1.json
  def update
    respond_to do |format|
      if @clinic_staff.update(clinic_staff_params)
        format.html { redirect_to @clinic_staff, notice: 'Clinic staff was successfully updated.' }
        format.json { render :show, status: :ok, location: @clinic_staff }
      else
        format.html { render :edit }
        format.json { render json: @clinic_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clinic_staffs/1
  # DELETE /clinic_staffs/1.json
  def destroy
    @clinic_staff.destroy
    respond_to do |format|
      format.html { redirect_to clinic_staffs_url, notice: 'Clinic staff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinic_staff
      @clinic_staff = ClinicStaff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clinic_staff_params
      params.require(:clinic_staff).permit(:clinic_id, :name, :description, :speciality, :image)
    end
end
