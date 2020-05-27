class MemosController < ApplicationController
  def new
  end

  def create
    @memo = Memo.new(comment_params)
    if @comment.save
      redirect_to item_path(@item)
    else
      redirect_to item_path(@item), flash: { alert: "コメントに失敗しました"}
    end
  end

  def destroy
  end
end
