class ReviewsController < ApplicationController
    before_action :authenticate_user!
  def new
    @package = Package.find(params[:id])
    @review = @package.reviews.new
  end

  def create
    @package = Package.find(params[:package_id])
    @review = @package.reviews.new(content: review_params[:content], user_id: current_user.id)
    if @review.save
      flash[:notice] = "Review successfully submitted."
      redirect_to package_path(@package)
    else
      redirect_to package_path(@package)
    end
  end

private
  def review_params
    params.require(:review).permit(:content)
  end
end
