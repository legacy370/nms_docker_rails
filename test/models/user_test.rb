require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'requires first name to be set' do
    oozer = User.new
    oozer.last_name = ("Henry")
    assert_raises(ActiveRecord::RecordInvalid) do
      oozer.save!
    end
  end
end
