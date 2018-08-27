class CommentsController < ApplicationController

#ability to create and delete comments associated with a post.

  def create
      @post = Post.find(params[:post_id])
      @comment = @post.comment.create(params[:comment].permit(:body, :user_id, :post_id))
      redirect_to post_path(@post)

      respond_to do |format|
        if @comment.save
          format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
          format.json { render :show, status: :created, location: @comment }
        else
          format.html { render :new }
          format.json { render json: @comment.errors, status: :unprocessable_entity }
        end
      end
  end
  # # GET /comments
  # # GET /comments.json
  # def index
  #   @comments = Comment.all
  # end
  #
  # # GET /comments/1
  # # GET /comments/1.json
  # def show
  # end
  #
  # GET /comments/new
  def new
    @comment = Comment.new
  end
  #
  # # GET /comments/1/edit
  # def edit
  # end
  #
  # POST /comments
  # POST /comments.json
  # def create
  #   @post = Post.find(params[:post_id])
  #   @comment = Comment.new(comment_params)
  #
  #   respond_to do |format|
  #     if @comment.save
  #       format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
  #       format.json { render :show, status: :created, location: @comment }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @comment.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end
  #
  # # DELETE /comments/1
  # # DELETE /comments/1.json
  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
      redirect_to post_path(@post)
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:post_id, :body, :user_id)
    end
end
