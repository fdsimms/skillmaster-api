Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'],
           :info_fields => 'email,name,first_name,last_name',
           :secure_image_url => true, image_size: :large
end
