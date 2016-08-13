class AuthorsController < ApplicationController
  def index
    @authors = Article.all
  end
end
