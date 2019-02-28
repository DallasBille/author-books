class AuthorsController < ApplicationController
  def index
      @authors = Author.all
  end

  def show
      get_author
   end

  def edit
      get_author
  end

  def update
      get_author.update(get_params)
      redirect_to author_path(@author)
  end

  def new
      @author = Author.new
  end

  def create
      @author = Author.new(get_params)
      if @author.valid?
         @author.save
         redirect_to author_path(@author)
     else
        render :new
     end

  end

  def destroy
      get_author.destroy
      redirect_to authors_path
  end

  private

  def get_author
      @author = Author.find(params[:id])
  end

  def get_params
      params.require(:author).permit(:name,:birth_year)
  end
end
