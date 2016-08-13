class Api::AuthorsController < ApplicationController
  def index
    render json: Author.all
  end

  def create
    @author = Author.new(author_params)

    if @author.save
      render json: { author: @author }
    else
      render json: { errors: "Did not work" }, status: :bad_request
    end
  end
end
