class FrontController < FrontApplicationController
  def index
    @articles = Article.page(params[:page])
  end

  def show
    @article = Article.find_by(id: params[:article_id])
    if @article.blank?
      return render_404
    end
  end
end
