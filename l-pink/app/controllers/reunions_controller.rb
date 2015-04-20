class ReunionsController < ApplicationController
  before_action :set_reunion, only: [:show, :edit, :update, :destroy]
 
  # GET /reunions
  # GET /reunions.json
  def index
    @reunions = Reunion.all
  end

  # GET /reunions/1
  # GET /reunions/1.json
  def show
    @id = params[:id];
    @tasks = Task.where(:reunion_id => @id);
  end

  # GET /reunions/new
  def new
    @reunion = Reunion.new
  end

  # GET /reunions/1/edit
  def edit
  end

  # POST /reunions
  # POST /reunions.json
  def create
    @reunion = Reunion.new(reunion_params)

    respond_to do |format|
      if @reunion.save
        format.html { redirect_to @reunion, notice: 'Reunion was successfully created.' }
        format.json { render :show, status: :created, location: @reunion }
      else
        format.html { render :new }
        format.json { render json: @reunion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reunions/1
  # PATCH/PUT /reunions/1.json
  def update
    respond_to do |format|
      if @reunion.update(reunion_params)
        format.html { redirect_to @reunion, notice: 'Reunion was successfully updated.' }
        format.json { render :show, status: :ok, location: @reunion }
      else
        format.html { render :edit }
        format.json { render json: @reunion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reunions/1
  # DELETE /reunions/1.json
  def destroy
    @reunion.destroy
    respond_to do |format|
      format.html { redirect_to reunions_url, notice: 'Reunion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reunion
      @reunion = Reunion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reunion_params
      params.require(:reunion).permit(:fecha, :horainicio, :horafin, :lugar)
    end
end
