class ProjecttypesController < ApplicationController
  before_action :set_projecttype, only: [:show, :edit, :update, :destroy]

  # GET /projecttypes
  # GET /projecttypes.json
  def index
    @projecttypes = Projecttype.all
  end

  # GET /projecttypes/1
  # GET /projecttypes/1.json
  def show
  end

  # GET /projecttypes/new
  def new
    @projecttype = Projecttype.new
  end

  # GET /projecttypes/1/edit
  def edit
  end

  # POST /projecttypes
  # POST /projecttypes.json
  def create
    @projecttype = Projecttype.new(projecttype_params)

    respond_to do |format|
      if @projecttype.save
        format.html { redirect_to @projecttype, notice: 'Projecttype was successfully created.' }
        format.json { render :show, status: :created, location: @projecttype }
      else
        format.html { render :new }
        format.json { render json: @projecttype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projecttypes/1
  # PATCH/PUT /projecttypes/1.json
  def update
    respond_to do |format|
      if @projecttype.update(projecttype_params)
        format.html { redirect_to @projecttype, notice: 'Projecttype was successfully updated.' }
        format.json { render :show, status: :ok, location: @projecttype }
      else
        format.html { render :edit }
        format.json { render json: @projecttype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projecttypes/1
  # DELETE /projecttypes/1.json
  def destroy
    @projecttype.destroy
    respond_to do |format|
      format.html { redirect_to projecttypes_url, notice: 'Projecttype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projecttype
      @projecttype = Projecttype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projecttype_params
      params.require(:projecttype).permit(:name, :description, :image, :note1, :note2)
    end
end
