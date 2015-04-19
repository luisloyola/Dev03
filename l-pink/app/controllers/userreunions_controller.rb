class UserreunionsController < ApplicationController
  before_action :set_userreunion, only: [:show, :edit, :update, :destroy]
  belongs_to :user
  belongs_to :reunion
  # GET /userreunions
  # GET /userreunions.json
  def index
    @userreunions = Userreunion.all
  end

  # GET /userreunions/1
  # GET /userreunions/1.json
  def show
  end

  # GET /userreunions/new
  def new
    @userreunion = Userreunion.new
  end

  # GET /userreunions/1/edit
  def edit
  end

  # POST /userreunions
  # POST /userreunions.json
  def create
    @userreunion = Userreunion.new(userreunion_params)

    respond_to do |format|
      if @userreunion.save
        format.html { redirect_to @userreunion, notice: 'Userreunion was successfully created.' }
        format.json { render :show, status: :created, location: @userreunion }
      else
        format.html { render :new }
        format.json { render json: @userreunion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userreunions/1
  # PATCH/PUT /userreunions/1.json
  def update
    respond_to do |format|
      if @userreunion.update(userreunion_params)
        format.html { redirect_to @userreunion, notice: 'Userreunion was successfully updated.' }
        format.json { render :show, status: :ok, location: @userreunion }
      else
        format.html { render :edit }
        format.json { render json: @userreunion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userreunions/1
  # DELETE /userreunions/1.json
  def destroy
    @userreunion.destroy
    respond_to do |format|
      format.html { redirect_to userreunions_url, notice: 'Userreunion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userreunion
      @userreunion = Userreunion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userreunion_params
      params.require(:userreunion).permit(:secreatrio, :presente)
    end
end
