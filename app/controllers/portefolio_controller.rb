class PortefolioController < ApplicationController

  def index
    @portefolios = Portefolio.all
  end

  def show
    @portefolio = Portefolio.find(params[:id])
  end

  def new
    @portefolio = Portefolio.new
  end

  def create
    @portefolio = Portefolio.new(portefolio_params)
    @portefolio.save
    # No need for app/views/portefolios/create.html.erb
    redirect_to portefolio_path(@portefolio)
  end

  def destroy
    @portefolio = Portefolio.find(params[:id])
    @portefolio.destroy
    redirect_to portefolio_path(@portefolio.portefolio), status: :see_other
  end

  def update
    @portefolio = Portefolio.find(params[:id])
    @portefolio.update(portefolio_params)
    # No need for app/views/portefolios/update.html.erb
    redirect_to portefolio_path(@portefolio)
  end

private

  def portefolio_params
    params.require(:portefolio).permit(:name, :photo, :video, :presentation)
  end
end
