class PackagesController < ApplicationController
  before_action :authenticate_user!
  before_action except: [:index] do
    redirect_to :new_user_session_path unless current_user && current_user.admin?
  end

  def index
    @packages = Package.all
  end

  def new
    @package = Package.new
  end

  def create
    @package = Package.new(package_params)
    if @package.save
      flash[:notice] = "Package successfully added."
      redirect_to packages_path
    else
      flash[:alert] = "There were some problems with your submission."
      render :new
    end
  end

private
  def package_params
    params.require(:package).permit(:name, :description, :price, :image)
  end
end
