require "test_helper"

class BlogPostTest < ActiveSupport::TestCase
  test "draft? returns true for draft blog post" do
    assert BlogPost.new(publishedAt: nil).draft?
  end

  test "draft? returns false for published blog post" do
    refute BlogPost.new(publishedAt: 1.year.ago).draft?
  end

  test "draft? returns false for scheduled blog post" do
    refute BlogPost.new(publishedAt: 1.year.from_now).draft?
  end


end
