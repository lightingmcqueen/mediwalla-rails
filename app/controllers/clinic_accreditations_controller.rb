class ClinicAccreditationsController < ApplicationController
  before_action :set_clinic_accreditation, only: [:show, :edit, :update, :destroy]

  # GET /clinic_accreditations
  # GET /clinic_accreditations.json
  def index
    @clinic_accreditations = ClinicAccreditation.all
  end

  # GET /clinic_accreditations/1
  # GET /clinic_accreditations/1.json
  def show
  end

  # GET /clinic_accreditations/new
  def new
    @clinic_accreditation = ClinicAccreditation.new
  end

  # GET /clinic_accreditations/1/edit
  def edit
  end

  # POST /clinic_accreditations
  # POST /clinic_accreditations.json
  def create
    @clinic_accreditation = ClinicAccreditation.new(clinic_accreditation_params)

    respond_to do |format|
      if @clinic_accreditation.save
        format.html { redirect_to @clinic_accreditation, notice: 'Clinic accreditation was successfully created.' }
        format.json { render :show, status: :created, location: @clinic_accreditation }
      else
        format.html { render :new }
        format.json { render json: @clinic_accreditation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clinic_accreditations/1
  # PATCH/PUT /clinic_accreditations/1.json
  def update
    respond_to do |format|
      if @clinic_accreditation.update(clinic_accreditation_params)
        format.html { redirect_to @clinic_accreditation, notice: 'Clinic accreditation was successfully updated.' }
        format.json { render :show, status: :ok, location: @clinic_accreditation }
      else
        format.html { render :edit }
        format.json { render json: @clinic_accreditation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clinic_accreditations/1
  # DELETE /clinic_accreditations/1.json
  def destroy
    @clinic_accreditation.destroy
    respond_to do |format|
      format.html { redirect_to clinic_accreditations_url, notice: 'Clinic accreditation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinic_accreditation
      @clinic_accreditation = ClinicAccreditation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clinic_accreditation_params
      params.require(:clinic_accreditation).permit(:clinic_id, :accreditation_id)
    end
end
