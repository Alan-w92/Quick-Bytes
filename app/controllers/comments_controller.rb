class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @list = List.find(params[:id])
    @comment = Comment.new(comment_params)
    if @comment.save
      flash[:alert] = "Comment added successfully"
      redirect_to list_path(@list)
    else
      flash[:errors] = @comment.errors.full_messages.to_sentence
      render :new
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to lists_path, notice: 'Comment was successfully deleted.'
  end

  private

  def comment_params
    params.require(:comment).permit(:description, :list_id, :user_id)
  end
end
