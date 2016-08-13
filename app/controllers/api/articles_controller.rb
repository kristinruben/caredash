class Api::ArticlesController < ApplicationController
  def index
    @author = Author.find(params[:author_id])
    @articles = @author.articles
    render json: @articles
  end
end
