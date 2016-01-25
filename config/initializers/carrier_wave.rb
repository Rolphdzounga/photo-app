if Rails.env.production?

	CarrierWave.configure do |config|

		config.fog_credentials = {

			:provider => 'AWS',

			:aws_access_key_id => ENV['S3_ACCESS_KEY'],

			:aws_secret_access_key => ENV['S3_SECRET_KEY'],

			:region                 => ENV["AWS_BUCKET"]

		}

		config.fog_directory = ENV['S3_BUCKET']


  #config.fog_credentials = {
    #:provider               => 'AWS',                        # required
    #:aws_access_key_id      => ENV["AWS_ACCESS_KEY"],                        # required
    #:aws_secret_access_key  => ENV["AWS_SECRET_KEY"] ,
    #:region                 => ENV["AWS_REGION"]       # required
 # }
 # config.fog_directory  = ENV["AWS_BUCKET"]  


	end

end



