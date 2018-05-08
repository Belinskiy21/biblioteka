OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '795526746455-ibe23dntk7kuol11b7gvf3cujf8f4ovb.apps.googleusercontent.com', 'lBzXviKPFzj7GnRIc59Tbz1y', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end
