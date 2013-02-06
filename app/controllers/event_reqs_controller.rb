class EventReqsController < ApplicationController
  # GET /event_reqs
  # GET /event_reqs.json
  def index
    @event_reqs = EventReq.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @event_reqs }
    end
  end

  # GET /event_reqs/1
  # GET /event_reqs/1.json
  def show
    @event_req = EventReq.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event_req }
    end
  end

  # GET /event_reqs/new
  # GET /event_reqs/new.json
  def new
    @event_req = EventReq.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @event_req }
    end
  end

  # GET /event_reqs/1/edit
  def edit
    @event_req = EventReq.find(params[:id])
  end

  # POST /event_reqs
  # POST /event_reqs.json
  def create
    @event_req = EventReq.new(params[:event_req])

    respond_to do |format|
      if @event_req.save
        format.html { redirect_to @event_req, notice: 'Event req was successfully created.' }
        format.json { render json: @event_req, status: :created, location: @event_req }
      else
        format.html { render action: "new" }
        format.json { render json: @event_req.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /event_reqs/1
  # PUT /event_reqs/1.json
  def update
    @event_req = EventReq.find(params[:id])

    respond_to do |format|
      if @event_req.update_attributes(params[:event_req])
        format.html { redirect_to @event_req, notice: 'Event req was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @event_req.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_reqs/1
  # DELETE /event_reqs/1.json
  def destroy
    @event_req = EventReq.find(params[:id])
    @event_req.destroy

    respond_to do |format|
      format.html { redirect_to event_reqs_url }
      format.json { head :no_content }
    end
  end
end
