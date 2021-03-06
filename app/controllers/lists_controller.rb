class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
    @list = list_id
    @comments = @list.comments
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

  def edit
    @list = list_id
  end

  def update
    @list = list_id
    if @list.update(list_params)
      redirect_to @list, notice: 'List was successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @list = list_id
    @list.destroy
    redirect_to lists_path, notice: 'List was successfully deleted'
  end

  private

  def list_params
    params.require(:list).permit(:recipe_name, :ingredient, :user_id)
  end

  def list_id
    List.find(params[:id])
  end
end
