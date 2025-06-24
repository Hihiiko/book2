class BooksController < ApplicationController
  def new
    @book_images = Book.new
  end

 # 投稿データの保存
 def create
  @book_image = Book.new(book_image_params)
  @book_image.user_id = current_user.id
  @book_image.save
  redirect_to book_images_path
 end

  def index
    
  end

  def show
  end

    # 投稿データのストロングパラメータ
    private

    def book_image_params
      params.require(:book_image).permit(:shop_name, :image, :caption)
    end

end
