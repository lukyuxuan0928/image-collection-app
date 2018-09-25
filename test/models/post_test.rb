require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @post = Post.new(when: '2017-02-02', image: 'asdad.png', story: '132eqwfgrthu653eqwdsafghtu645653q2eDSFGHTYT42EWAFSD', title: 'test_title')
  end

  test "should save without any error" do
    assert @post.save
  end

  #
  #  Title
  #

  test "should not save without title" do
    @post.title = ''

    assert_not @post.save
  end

  test "should not save with a long title" do
    @post.title = 'sdad23sdad23qrwdesar3ewdsc32rewd21eqwd23refwd12eq3fwrg12eqwd'

    assert_not @post.save
  end

  test "should not save with a short title" do
    @post.title = 'sd'

    assert_not @post.save
  end

  #
  # Date
  #

  test "should not save without a date" do
    @post.when = ''

    assert_not @post.save
  end

  #
  # story
  #

  test "should save without story" do
    @post.story = ''
    assert @post.save
  end

  test "should not save with a super long long story" do
    story = ''

    2000.times do
      story.concat("who")
    end

    @post.story = story

    assert_not @post.save
  end

end
