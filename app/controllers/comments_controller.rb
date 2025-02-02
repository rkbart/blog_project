class CommentsController < ApplicationController
    
    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.build(comment_params)  ##use build instead create so it would not save to the database yet

        if @comment.save
            redirect_to @post, notice: "Comment was successfully created."
        else
            redirect_to @post, alert: "Comment was not created."
        end
    end

    def destroy
        @post = Post.find(params[:post_id])
        @comment = @post.comments.find(params[:id])
        @comment.destroy

        redirect_to @post, notice: "Comment was successfully deleted."
    end

    private

    def comment_params
        params.require(:comment).permit(:name, :body)
    end
end
