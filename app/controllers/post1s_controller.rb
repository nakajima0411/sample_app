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
        # トップ画面へリダイレクト
        redirect_to '/top'
   end

   private
   def post1_params
        params.require(:post1).permit(:title, :body)
   end
end