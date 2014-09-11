class RocklesController < ApplicationController
  before_action :ensure_signed_in

  def new
    @species = %w(a b c d e)
    @rockle = Rockle.new
    render 'new'
  end

  def create
    @rockle = Rockle.new(name: params[:rockle][:name], species: params[:rockle][:species])
    @rockle.user_id = current_user.id

    if @rockle.save
      redirect_to rockle_url(@rockle)
    else

    end
  end

  def show
    @rockle = Rockle.find(params(:id)) #TODO: check params
    render 'show'
  end

  private

  def rockle_params
    params.require(:rockle).permit(:name, :species)
  end
end