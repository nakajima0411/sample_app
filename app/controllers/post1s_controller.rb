class Post1sController < ApplicationController
  def new
  	 # 空のモデルをビューへ渡す
      @post = Post1.new
  end

   def create
        # ストロングパラメーターを使用
         post = Post1.new(post1_params)
        # DBへ保存する
         post.save
        # 詳細画面へリダイレクト
        redirect_to post1_path(post.id)
   end
   def index
   	   @posts = Post1.all
   end
   def show
   	   @post = Post1.find(params[:id])
   end
   def edit
   	   @post = Post1.find(params[:id])
   end
   def update
   	   post = Post1.find(params[:id])
   	   post.update(post1_params)
   	   redirect_to post1_path(post.id)
   end
   def destroy
   	   post = Post1.find(params[:id])
   	   post.destroy
   	   redirect_to post1s_path
   end

   private
   def post1_params
        params.require(:post1).permit(:title, :body, :image)
   end
end