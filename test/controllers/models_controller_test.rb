require "test_helper"

class ModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @model = models(:one)
  end

  test "should get index" do
    get models_url, as: :json
    assert_response :success
  end

  test "should create model" do
    assert_difference("Model.count") do
      post models_url, params: { model: { User: @model.User, area: @model.area, city: @model.city, email: @model.email, first_name: @model.first_name, house_number: @model.house_number, last_name: @model.last_name, phone: @model.phone, state: @model.state, zip: @model.zip } }, as: :json
    end

    assert_response :created
  end

  test "should show model" do
    get model_url(@model), as: :json
    assert_response :success
  end

  test "should update model" do
    patch model_url(@model), params: { model: { User: @model.User, area: @model.area, city: @model.city, email: @model.email, first_name: @model.first_name, house_number: @model.house_number, last_name: @model.last_name, phone: @model.phone, state: @model.state, zip: @model.zip } }, as: :json
    assert_response :success
  end

  test "should destroy model" do
    assert_difference("Model.count", -1) do
      delete model_url(@model), as: :json
    end

    assert_response :no_content
  end
end
