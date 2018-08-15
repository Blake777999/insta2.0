class CommentsController < ApplicationController
  def new
    render ("new.html.erb")
  end
  def create
    comment = Comment.new
    comment.body=params['body']
    comment.photo_id=params['photo_id']
  end
end
