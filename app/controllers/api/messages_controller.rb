class Api::MessagesController < ApplicationController
  def index
    gorup = Group.find(params[:group_id])
    last_message_id = params[:id].to_i
    @messages = group.messages.includes(:user).where("id > ?", last_message_id)
  end
end