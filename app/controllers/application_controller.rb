class ApplicationController < ActionController::Base
    include SessionsHelper

    client = Slack::Web::Client.new
    workspace_users = client.users_list.members
    channel_userIds = client.conversations_members(channel: 'C020SSZH0U8').members
    @users = workspace_users.select{ |u| channel_userIds.include?(u.id) }
    puts @users
end
