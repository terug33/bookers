class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.order(:id)
  end

  def show
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to @book
    else
      @books = Book.order(:id)
      flash.now[:alert] = "There was an error saving the book."
      render :index
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
      flash[:notice] = "Book was successfully updated."
      redirect_to book_path(@book)
    else
      flash.now[:alert] = "There was an error updating the book."
      render :edit
    end
  end
  
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:notice] = "Book was successfully deleted."
    redirect_to @book
  end
  
  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
