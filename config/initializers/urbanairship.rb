Urbanairship.application_key = ENV['ua-key']
Urbanairship.application_secret = ENV['ua-secret']
Urbanairship.master_secret = ENV['ua-mastersecret']
Urbanairship.logger = Rails.logger
Urbanairship.request_timeout = 5 # default

Rails.logger.info 'UA initialized!'