class PokedexesController < ApplicationController
  before_action :set_pokedex, only: [:show, :update, :destroy]

  # GET /pokedexes
  def index
    @pokedexes = Pokedex.all

    render json: @pokedexes
  end

  # GET /pokedexes/1
  def show
    render json: @pokedex
  end

  # POST /pokedexes
  def create
    @pokedex = Pokedex.new(pokedex_params)

    if @pokedex.save
      render json: @pokedex, status: :created, location: @pokedex
    else
      render json: @pokedex.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pokedexes/1
  def update
    if @pokedex.update(pokedex_params)
      render json: @pokedex
    else
      render json: @pokedex.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pokedexes/1
  def destroy
    @pokedex.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pokedex
      @pokedex = Pokedex.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pokedex_params
      params.require(:pokedex).permit(:name)
    end
end
