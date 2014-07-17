class NewhomesController < ApplicationController
  before_action :set_newhome, only: [:show, :edit, :update, :destroy]

  # GET /newhomes
  # GET /newhomes.json
  def index
    @project = Project.find(params[:homeid])
    if params[:homeid]
      @newhomes = Newhome.where(project_id: params[:homeid])
    else
      @newhomes = Newhome.all
    end
  end

  # GET /newhomes/1
  # GET /newhomes/1.json
  def show
  end

  # GET /newhomes/new
  def new
    @newhome = Newhome.new
  end

  # GET /newhomes/1/edit
  def edit
  end

  # POST /newhomes
  # POST /newhomes.json
  def create
    @newhome = Newhome.new(newhome_params)

    respond_to do |format|
      if @newhome.save
        format.html { redirect_to @newhome, notice: 'Newhome was successfully created.' }
        format.json { render :show, status: :created, location: @newhome }
      else
        format.html { render :new }
        format.json { render json: @newhome.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newhomes/1
  # PATCH/PUT /newhomes/1.json
  def update
    respond_to do |format|
      if @newhome.update(newhome_params)
        format.html { redirect_to @newhome, notice: 'Newhome was successfully updated.' }
        format.json { render :show, status: :ok, location: @newhome }
      else
        format.html { render :edit }
        format.json { render json: @newhome.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newhomes/1
  # DELETE /newhomes/1.json
  def destroy
    @newhome.destroy
    respond_to do |format|
      format.html { redirect_to newhomes_url, notice: 'Newhome was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def userindex
    if params[:homeid]
      @homes = Newhome.where(project_id: params[:homeid])
    else
      @homes = Newhome.all
    end
    @project = Project.find(params[:homeid])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newhome
      @newhome = Newhome.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newhome_params
      params.require(:newhome).permit(:name, :homedes, :frontimg, :structimg, :lot, :address, :size, :bedroom, :bathroom, :garage, :price, :status, :project_id, :note1, :note2, :note3, :homeid)
    end
end
