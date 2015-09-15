require 'test_helper'

class CommentControllerTest < ActionController::TestCase
  test "comment creation" do
    user = FactoryGirl.create(:user)
    sign_in user

    place = FactoryGirl.create(:place)
    comment = FactoryGirl.create(:comment)

    assert_difference 'Comment.count' do
      post :create, comment => :comment
    end
  
    assert_equal 1, 'Comment.count'
    assert_redirected_to place_path(place)
  end
end
