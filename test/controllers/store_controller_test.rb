require 'test_helper'

# test comment in test_branch

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    # looks for the links to the home page, etc.
    assert_select '#columns #side a', minimum: 2
    assert_select '#main .entry', 3
    assert_select 'h3', 'Programming Ruby 1.9'
    assert_select '.price', /\$[,\d]+\.\d\d/
  end

end
