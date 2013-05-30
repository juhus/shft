AWS.config({
    :access_key_id => 'AKIAIEOE7N3R5ZGL3WEA',
    :secret_access_key => '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',
  })

CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAIEOE7N3R5ZGL3WEA',                        # required
    :aws_secret_access_key  => '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',                        # required
    #:region                 => 'Si',                  # optional, defaults to 'us-east-1'
    #:host                   => 's3.example.com',             # optional, defaults to nil
    #:endpoint               => 'https://s3.example.com:8080' # optional, defaults to nil
  }
  config.fog_directory  = 'shft-storage'                     # required
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end