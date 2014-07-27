class LanddivisionsController < ApplicationController
  before_action :set_landdivision, only: [:show, :edit, :update, :destroy]

  # GET /landdivisions
  # GET /landdivisions.json
  def index
    
    if params[:landid]
      session[:projectid] = params[:landid]
      session[:projectname] = Project.find(params[:landid]).name
      @landdivisions = Landdivision.where(project_id: params[:landid])
    else
      @landdivisions = Landdivision.all
      
    end
  end

  # GET /landdivisions/1
  # GET /landdivisions/1.json
  def show
  end

  # GET /landdivisions/new
  def new
    @landdivision = Landdivision.new
    @landdivision.project_id = session[:projectid]
  end

  # GET /landdivisions/1/edit
  def edit
    @landdivision.project_id = session[:projectid]
  end

  # POST /landdivisions
  # POST /landdivisions.json
  def create
    @landdivision = Landdivision.new(landdivision_params)

    respond_to do |format|
      if @landdivision.save
        format.html { redirect_to @landdivision, notice: 'Landdivision was successfully created.' }
        format.json { render :show, status: :created, location: @landdivision }
      else
        format.html { render :new }
        format.json { render json: @landdivision.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /landdivisions/1
  # PATCH/PUT /landdivisions/1.json
  def update
    respond_to do |format|
      if @landdivision.update(landdivision_params)
        format.html { redirect_to @landdivision, notice: 'Landdivision was successfully updated.' }
        format.json { render :show, status: :ok, location: @landdivision }
      else
        format.html { render :edit }
        format.json { render json: @landdivision.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /landdivisions/1
  # DELETE /landdivisions/1.json
  def destroy
    @landdivision.destroy
    respond_to do |format|
      @landdivisions = Landdivision.where(project_id: session[:projectid])
      format.html { render action: "index", notice: 'Landdivision was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def userindex
    if params[:landid]
      @landdivisions = Landdivision.where(project_id: params[:landid])
    else
      @landdivisions = Landdivision.all
    end
    @land = Project.find(params[:landid])
  end

  def download_pdf
    send_file(
      "#{Rails.root}/public/position.png",
      filename: "position.png",
      type: "application/pdf"
    )
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_landdivision
      @landdivision = Landdivision.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def landdivision_params
      params.require(:landdivision).permit(:lot, :address, :size, :frontage, :price, :status, :project_id, :landid)
    end
end
