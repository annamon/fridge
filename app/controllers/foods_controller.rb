class FoodsController < ApplicationController
  def index
    #메인 화면
  end

  def new
    #새로운 식재료를 추가하는 View
  end

  def create
    #식재료를 추가하는 액션
    @food = Food.new
        @food.name = params[:input_name]
        @food.date = params[:start]
        @food.save
        
        redirect_to '/foods/fridge'
  end

  def edit
    #식재료를 수정하는 View
    @food = Food.find(params[:food_id])
  end

  def update
    #수정하는 액션
     @post = Post.find(params[:post_id])
        # 수정할 코드
      @post.title = params[:input_title]
      @post.content = params[:input_content]
      @post.save
      redirect_to '/foods/fridge'
  end

  def destroy
    #삭제하는 액션
    @food = Food.find(params[:food_id])
    @food.destroy
    redirect_to '/foods/fridge'
  end
  
  def fridge
    #추가된 식재료를 모두 볼 수 있는 View
    @foods = Food.all
  end
end
