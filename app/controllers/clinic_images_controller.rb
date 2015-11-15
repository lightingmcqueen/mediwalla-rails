class ClinicImagesController < ApplicationController
  before_action :set_clinic_image, only: [:show, :edit, :update, :destroy]

  # GET /clinic_images
  # GET /clinic_images.json
  def index
    @clinic_images = ClinicImage.all
  end

  # GET /clinic_images/1
  # GET /clinic_images/1.json
  def show
  end

  # GET /clinic_images/new
  def new
    @clinic_image = ClinicImage.new
  end

  # GET /clinic_images/1/edit
  def edit
  end

  # POST /clinic_images
  # POST /clinic_images.json
  def create
    @clinic_image = ClinicImage.new(clinic_image_params)

    respond_to do |format|
      if @clinic_image.save
        format.html { redirect_to @clinic_image, notice: 'Clinic image was successfully created.' }
        format.json { render :show, status: :created, location: @clinic_image }
      else
        format.html { render :new }
        format.json { render json: @clinic_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clinic_images/1
  # PATCH/PUT /clinic_images/1.json
  def update
    respond_to do |format|
      if @clinic_image.update(clinic_image_params)
        format.html { redirect_to @clinic_image, notice: 'Clinic image was successfully updated.' }
        format.json { render :show, status: :ok, location: @clinic_image }
      else
        format.html { render :edit }
        format.json { render json: @clinic_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clinic_images/1
  # DELETE /clinic_images/1.json
  def destroy
    @clinic_image.destroy
    respond_to do |format|
      format.html { redirect_to clinic_images_url, notice: 'Clinic image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinic_image
      @clinic_image = ClinicImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clinic_image_params
      params[:clinic_image]
    end
end
