class PostsController < ApplicationController
  def index
    @book = Book.new
    @books = Book.order(:id)
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end
  
  def destroy
  end
end
