
class TestController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create_post
    Post.create!(body: (0...50).map { ('a'..'z').to_a[rand(26)] }.join)
  end
end
