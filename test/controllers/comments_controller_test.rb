require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "comment creation" do
    user = FactoryGirl.create(:user)
    sign_in user

    place = FactoryGirl.create(:place)
    comment = FactoryGirl.create(:comment)

      post :create, :place_id => place.id, :comment => {
        :message => comment.message,
        :rating => comment.rating
      }

    assert_redirected_to place_path(place)
  end
end
