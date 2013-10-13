OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '215947228529566', 'c9688dc2e9460cf3ffb80fa0ccb285d2'
end

