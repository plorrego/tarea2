require 'test_helper'

class ClassNewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @class_news = class_news(:one)
  end

  test "should get index" do
    get class_news_index_url, as: :json
    assert_response :success
  end

  test "should create class_news" do
    assert_difference('ClassNews.count') do
      post class_news_index_url, params: { class_news: { body: @class_news.body, drop: @class_news.drop, title: @class_news.title } }, as: :json
    end

    assert_response 201
  end

  test "should show class_news" do
    get class_news_url(@class_news), as: :json
    assert_response :success
  end

  test "should update class_news" do
    patch class_news_url(@class_news), params: { class_news: { body: @class_news.body, drop: @class_news.drop, title: @class_news.title } }, as: :json
    assert_response 200
  end

  test "should destroy class_news" do
    assert_difference('ClassNews.count', -1) do
      delete class_news_url(@class_news), as: :json
    end

    assert_response 204
  end
end
