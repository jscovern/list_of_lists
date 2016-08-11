class BooksController < ApplicationController
    
	def create
    	@book = Book.new(book_params)
        if @book.save
            redirect_to "/lists/#{@book.list_id}"
        else
            flash[:error] = @book.errors.full_messages
            temp = @book.errors.full_messages
            render json: temp
        end
    end

    def new
    	@book = Book.new
    	render :new 
	end

    def edit
    	@book = Book.find_by_id(params[:id])
    	render :edit
    end

    def update
    	@book = Book.find_by_id(params[:id])
    	@book.update_attributes(book_params)
    	redirect_to "/lists/#{@book.list_id}"
    end

    def destroy
    	@book = Book.find_by_id(params[:id])
    	@book.destroy
    	redirect_to "/lists/#{@book.list_id}"
	end 

private
	def book_params
		params.permit(:title, :author, :description, :img_url, :list_id)
	end
end


