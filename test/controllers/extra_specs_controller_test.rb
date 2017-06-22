require 'test_helper'

class ExtraSpecsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @extra_spec = extra_specs(:one)
  end

  test "should get index" do
    get extra_specs_url
    assert_response :success
  end

  test "should get new" do
    get new_extra_spec_url
    assert_response :success
  end

  test "should create extra_spec" do
    assert_difference('ExtraSpec.count') do
      post extra_specs_url, params: { extra_spec: { speciality: @extra_spec.speciality } }
    end

    assert_redirected_to extra_spec_url(ExtraSpec.last)
  end

  test "should show extra_spec" do
    get extra_spec_url(@extra_spec)
    assert_response :success
  end

  test "should get edit" do
    get edit_extra_spec_url(@extra_spec)
    assert_response :success
  end

  test "should update extra_spec" do
    patch extra_spec_url(@extra_spec), params: { extra_spec: { speciality: @extra_spec.speciality } }
    assert_redirected_to extra_spec_url(@extra_spec)
  end

  test "should destroy extra_spec" do
    assert_difference('ExtraSpec.count', -1) do
      delete extra_spec_url(@extra_spec)
    end

    assert_redirected_to extra_specs_url
  end
end
