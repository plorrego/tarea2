class ClassNewsController < ApplicationController
  before_action :set_class_news, only: [:show, :update, :destroy]

  # GET /class_news
  def index
    @class_news = ClassNews.all

    render json: @class_news
  end

  # GET /class_news/1
  def show
    render json: @class_news
  end

  # POST /class_news
  def create
    @class_news = ClassNews.new(class_news_params)

    if @class_news.save
      render json: @class_news, status: :created, location: @class_news
    else
      render json: @class_news.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /class_news/1
  def update
    if @class_news.update(class_news_params)
      render json: @class_news
    else
      render json: @class_news.errors, status: :unprocessable_entity
    end
  end

  # DELETE /class_news/1
  def destroy
    @class_news.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_news
      @class_news = ClassNews.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def class_news_params
      params.require(:class_news).permit(:title, :drop, :body)
    end
end
