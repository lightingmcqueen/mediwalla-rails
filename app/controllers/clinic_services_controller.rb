class ClinicServicesController < ApplicationController
  before_action :set_clinic_service, only: [:show, :edit, :update, :destroy]

  # GET /clinic_services
  # GET /clinic_services.json
  def index
    @clinic_services = ClinicService.all
  end

  # GET /clinic_services/1
  # GET /clinic_services/1.json
  def show
  end

  # GET /clinic_services/new
  def new
    @clinic_service = ClinicService.new
  end

  # GET /clinic_services/1/edit
  def edit
  end

  # POST /clinic_services
  # POST /clinic_services.json
  def create
    @clinic_service = ClinicService.new(clinic_service_params)

    respond_to do |format|
      if @clinic_service.save
        format.html { redirect_to @clinic_service, notice: 'Clinic service was successfully created.' }
        format.json { render :show, status: :created, location: @clinic_service }
      else
        format.html { render :new }
        format.json { render json: @clinic_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clinic_services/1
  # PATCH/PUT /clinic_services/1.json
  def update
    respond_to do |format|
      if @clinic_service.update(clinic_service_params)
        format.html { redirect_to @clinic_service, notice: 'Clinic service was successfully updated.' }
        format.json { render :show, status: :ok, location: @clinic_service }
      else
        format.html { render :edit }
        format.json { render json: @clinic_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clinic_services/1
  # DELETE /clinic_services/1.json
  def destroy
    @clinic_service.destroy
    respond_to do |format|
      format.html { redirect_to clinic_services_url, notice: 'Clinic service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinic_service
      @clinic_service = ClinicService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clinic_service_params
      params.require(:clinic_service).permit(:clinic_id, :service_id)
    end
end
