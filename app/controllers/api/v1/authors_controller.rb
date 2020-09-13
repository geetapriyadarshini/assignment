class Api::V1::AuthorsController < ApplicationController


  def show
    if get_author
      render json: {author: get_author, books: get_author.books}
    else
      render json: {message: "Author not Found"}
    end
  end


  private
    def get_author
      @author = Author.find_by(id: params[:id])
    end

end
