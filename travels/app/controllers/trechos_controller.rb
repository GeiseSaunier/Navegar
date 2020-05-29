class TrechosController < ApplicationController
  before_action :set_trecho, only: [:show, :edit, :update, :destroy]

  # GET /trechos
  # GET /trechos.json
  def index
    @trechos = Trecho.all   
  end

  def search
    @trechos = Trecho.where(nil) # creates an anonymous scope
    if params[:search].present?
      @trechos = @trechos.origem(params[:search][:origem]) if params[:search][:origem].present?   
      @trechos = @trechos.destino(params[:search][:destino]) if params[:search][:destino].present? 
    end
  end

  # GET /trechos/1
  # GET /trechos/1.json
  def show
  end

  # GET /trechos/new
  def new
    @trecho = Trecho.new
  end

  # GET /trechos/1/edit
  def edit
  end

  # POST /trechos
  # POST /trechos.json
  def create
    @trecho = Trecho.new(trecho_params)

    respond_to do |format|
      if @trecho.save
        format.html { redirect_to @trecho, notice: 'Trecho was successfully created.' }
        format.json { render :show, status: :created, location: @trecho }
      else
        format.html { render :new }
        format.json { render json: @trecho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trechos/1
  # PATCH/PUT /trechos/1.json
  def update
    respond_to do |format|
      if @trecho.update(trecho_params)
        format.html { redirect_to @trecho, notice: 'Trecho was successfully updated.' }
        format.json { render :show, status: :ok, location: @trecho }
      else
        format.html { render :edit }
        format.json { render json: @trecho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trechos/1
  # DELETE /trechos/1.json
  def destroy
    @trecho.destroy
    respond_to do |format|
      format.html { redirect_to trechos_url, notice: 'Trecho was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trecho
      @trecho = Trecho.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trecho_params
      params.require(:trecho).permit(:origem, :destino, :data_ida, :horario_ida, :data_volta, :horario_volta)
    end
end
