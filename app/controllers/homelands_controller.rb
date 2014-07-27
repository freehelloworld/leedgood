class HomelandsController < ApplicationController
  before_action :set_homeland, only: [:show, :edit, :update, :destroy]

  # GET /homelands
  # GET /homelands.json
  def index
    
    if(params[:packageid])
      @homelands = Homeland.where(project_id: params[:packageid])
      session[:projectid] = params[:packageid]
      session[:projectname] = Project.find(params[:packageid]).name
    else
      @homelands = Homeland.all
    end
  end

  # GET /homelands/1
  # GET /homelands/1.json
  def show
  end

  # GET /homelands/new
  def new
    @homeland = Homeland.new
    @homeland.project_id = session[:projectid]
  end

  # GET /homelands/1/edit
  def edit
    @homeland.project_id = session[:projectid]
  end

  # POST /homelands
  # POST /homelands.json
  def create
    @homeland = Homeland.new(homeland_params)
    @homelands = Homeland.where(project_id: session[:projectid])

    respond_to do |format|
      if @homeland.save
        format.html { render action: "index", notice: 'Homeland was successfully created.' }
        format.json { render :show, status: :created, location: @homeland }
      else
        format.html { render :new }
        format.json { render json: @homeland.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /homelands/1
  # PATCH/PUT /homelands/1.json
  def update
    respond_to do |format|
      if @homeland.update(homeland_params)
        @homelands = Homeland.where(project_id: session[:projectid])
        format.html { render action: "index", notice: 'Homeland was successfully updated.' }
        format.json { render :show, status: :ok, location: @homeland }
      else
        format.html { render :edit }
        format.json { render json: @homeland.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homelands/1
  # DELETE /homelands/1.json
  def destroy
    @homeland.destroy
    respond_to do |format|
      @homelands = Homeland.where(project_id: session[:projectid])
      format.html { render action: "index", notice: 'Homeland was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def userindex
    if params[:packageid]
      @homelands = Homeland.where(project_id: params[:packageid])
    else
      @homelands = Homeland.all
    end
    @project = Project.find(params[:packageid])
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_homeland
      @homeland = Homeland.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def homeland_params
      params.require(:homeland).permit(:name, :packagedes, :frontimg, :structimg, :lot, :address, :size, :bedroom, :bathroom, :garage, :price, :status, :note1, :note2, :note3, :project_id, :packageid)
    end
end
