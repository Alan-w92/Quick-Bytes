class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @list = list_params
  end

  def create
    @comment = Comment.new(comment_params)
    @list = list_params

    if @comment.save
      flash[:alert] = "Comment added successfully"
      redirect_to list_path(@list)
    else
      flash[:errors] = @comment.errors.full_messages.to_sentence
      render :new
    end
  end

  def edit
    @list = list_params
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @list = @comment.list
    if @comment.update(comment_params)
      redirect_to @list, notice: 'Comment was successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @list = @comment.list
    @comment.destroy
    redirect_to lists_path, notice: 'Comment was successfully deleted'
  end

  private

  def comment_params
    params.require(:comment).permit(:description).merge(list: List.find(params[:list_id]))
  end

  def list_params
    List.find(params[:list_id])
  end
end
