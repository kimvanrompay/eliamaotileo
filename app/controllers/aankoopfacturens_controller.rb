class AankoopfacturensController < ApplicationController
  before_action :set_aankoopfacturen, only: %i[ show edit update destroy ]

  # GET /aankoopfacturens or /aankoopfacturens.json
  def index
    @aankoopfacturens = Aankoopfacturen.all
  end

  # GET /aankoopfacturens/1 or /aankoopfacturens/1.json
  def show
  end

  # GET /aankoopfacturens/new
  def new
    @aankoopfacturen = Aankoopfacturen.new
  end

  # GET /aankoopfacturens/1/edit
  def edit
  end

  # POST /aankoopfacturens or /aankoopfacturens.json
  def create
    @aankoopfacturen = Aankoopfacturen.new(aankoopfacturen_params)

    respond_to do |format|
      if @aankoopfacturen.save
        format.html { redirect_to aankoopfacturen_url(@aankoopfacturen), notice: "Aankoopfacturen was successfully created." }
        format.json { render :show, status: :created, location: @aankoopfacturen }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aankoopfacturen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aankoopfacturens/1 or /aankoopfacturens/1.json
  def update
    respond_to do |format|
      if @aankoopfacturen.update(aankoopfacturen_params)
        format.html { redirect_to aankoopfacturen_url(@aankoopfacturen), notice: "Aankoopfacturen was successfully updated." }
        format.json { render :show, status: :ok, location: @aankoopfacturen }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aankoopfacturen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aankoopfacturens/1 or /aankoopfacturens/1.json
  def destroy
    @aankoopfacturen.destroy

    respond_to do |format|
      format.html { redirect_to aankoopfacturens_url, notice: "Aankoopfacturen was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aankoopfacturen
      @aankoopfacturen = Aankoopfacturen.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aankoopfacturen_params
      params.require(:aankoopfacturen).permit(:bedrijfsnaam, :adres, :land, :postcode, :btw, :klantnummer, :factuurnummer, :description, :excl_bedrag, :factuurdatum, :vervaldatum, :rekeningnummer, :begunstigde, :mededeling, :factuur_mail, :betaald, :bevestigd, :recurrent, :opmerking, :staving)
    end
end
