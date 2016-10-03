class ParjosController < ApplicationController
  before_action :set_parjo, only: [:show, :edit, :update, :destroy]

  # GET /parjos
  # GET /parjos.json
  def index
    @parjos = Parjo.all
  end

  # GET /parjos/1
  # GET /parjos/1.json
  def show
  end

  # GET /parjos/new
  def new
    @parjo = Parjo.new
  end

  # GET /parjos/1/edit
  def edit
  end

  # POST /parjos
  # POST /parjos.json
  def create
    @parjo = Parjo.new(parjo_params)

    respond_to do |format|
      if @parjo.save
        format.html { redirect_to @parjo, notice: 'Parjo was successfully created.' }
        format.json { render :show, status: :created, location: @parjo }
      else
        format.html { render :new }
        format.json { render json: @parjo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parjos/1
  # PATCH/PUT /parjos/1.json
  def update
    respond_to do |format|
      if @parjo.update(parjo_params)
        format.html { redirect_to @parjo, notice: 'Parjo was successfully updated.' }
        format.json { render :show, status: :ok, location: @parjo }
      else
        format.html { render :edit }
        format.json { render json: @parjo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parjos/1
  # DELETE /parjos/1.json
  def destroy
    @parjo.destroy
    respond_to do |format|
      format.html { redirect_to parjos_url, notice: 'Parjo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parjo
      @parjo = Parjo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parjo_params
      params.require(:parjo).permit(:name, :email)
    end
end
