class PackagesController < ApplicationController
  before_action except: [:index, :show] do
    redirect_to new_user_session_path unless current_user && current_user.admin?
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

  def show
    @package = Package.find(params[:id])
    @review = @package.reviews.new
  end

  def edit
    @package = Package.find(params[:id])
  end

  def update
    @package = Package.find(params[:id])
    if @package.update(package_params)
      flash[:notice] = 'Photo package was successfully updated.'
      redirect_to package_path(@package)
    else
      render :edit
    end
  end

  def destroy
    @package = Package.find(params[:id])
    @package.destroy
    redirect_to root_path
  end

private
  def package_params
    params.require(:package).permit(:name, :description, :price, :image)
  end
end
