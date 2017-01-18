class MessagesController < ApplicationController

  def create
    @msg = Message.new
    @msg.username = params[:username]
    @msg.email = params[:email]
    @msg.description = params[:description]
    begin
      @msg.save!
      render :show, status: :created
    rescue
      render template: 'common/errors.json.jbuilder', status: :bad_request #,  locals: {errors: @submission_answer.errors.full_messages}
    end
  end

  def index
    @msgs = Message.all
    render :index, status: :ok
  end

end
