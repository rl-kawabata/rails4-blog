class FrontController < FrontApplicationController
  def index
    @articles = Article.page(params[:page])
  end

  def show
  end
end
