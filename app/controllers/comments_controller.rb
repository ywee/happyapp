class CommentsController < ApplicationController
 
  def create
    @event_req = EventReq.find(params[:event_req_id])
    @comment = @event_req.comments.create!(params[:comment])
    redirect_to @event_req
  end
  
  def new
    @comment = Comment.new(params[:comment])
  end
 
  def index
    @comments = Comment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comments }
    end
  end
  
   def show
    @comment = Comment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comment }
    end
  end

  
end
