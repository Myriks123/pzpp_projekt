class PrzepisiesController < ApplicationController
  before_action :set_przepisy, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]
  # GET /przepisies or /przepisies.json
  def index
    @przepisies = Przepisy.all
  end

  # GET /przepisies/1 or /przepisies/1.json
  def show
  end

  # GET /przepisies/new
  def new
    #@przepisy = Przepisy.new
    @przepisy = current_user.przepisies.build
  end

  # GET /przepisies/1/edit
  def edit
  end

  # POST /przepisies or /przepisies.json
  def create
    #@przepisy = Przepisy.new(przepisy_params)
    @przepisy = current_user.przepisies.build(przepisy_params)

    respond_to do |format|
      if @przepisy.save
        format.html { redirect_to przepisy_url(@przepisy), notice: "Przepis został pomyślnie dodany." }
        format.json { render :show, status: :created, location: @przepisy }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @przepisy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /przepisies/1 or /przepisies/1.json
  def update
    respond_to do |format|
      if @przepisy.update(przepisy_params)
        format.html { redirect_to przepisy_url(@przepisy), notice: "Przepis został pomyślnie zaktualizowany." }
        format.json { render :show, status: :ok, location: @przepisy }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @przepisy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /przepisies/1 or /przepisies/1.json
  def destroy
    @przepisy.destroy

    respond_to do |format|
      format.html { redirect_to przepisies_url, notice: "Przepis został pomyślnie usunięty." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @przepisy = current_user.przepisies.find_by(id: params[:id])
    redirect_to przepisies_path, notice: "Nie masz uprawnień do edycji tego przepisu." if @przepisy.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_przepisy
      @przepisy = Przepisy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def przepisy_params
      params.require(:przepisy).permit(:nazwa, :image, :opis, :stopien_trudnosci, :czas_przygotowania, :ocena_uzytkownikow, :kategoria, :user_id)
    end
end
