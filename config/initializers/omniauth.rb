Rails.application.config.middleware.use OmniAuth::Builder do
    provider :slack, ENV['SLACK_CLIENT_ID'], ENV['SLACK_CLIENT_SECRET'], scope: 'identity.basic'
end
