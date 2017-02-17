class ReviewsController < ApplicationController
  before_action :authenticate_user!
  before_action only: [:destroy] do
    redirect_to new_user_session_path unless current_user && current_user.admin?
  end


  def create
    @package = Package.find(params[:package_id])
    @review = @package.reviews.new(content: review_params[:content], user_id: current_user.id)
    if @review.save
      flash[:notice] = "Review successfully submitted."
      redirect_to package_path(@package)
    else
      flash[:alert] = "There were some problems with your submission."
      redirect_to package_path(@package)
    end
  end

  def destroy
    @package = Package.find(params[:package_id])
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to package_path(@package)
  end

private
  def review_params
    params.require(:review).permit(:content)
  end
end
