class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      flash[:alert] = "List added successfully"
      redirect_to list_path(@list)
    else
      flash[:errors] = @list.errors.full_messages.to_sentence
      render :new
    end
  end

  private

  def list_params
    params.require(:list).permit(:comment, :recipe_name, :ingredient, :user_id)
  end
end
